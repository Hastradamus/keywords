//  Created by Hasan Y Ahmed on 2/23/17.

#include <string.h>
#include "utilfuncs.h"
#include <time.h>

void printErrorMessage(){
    fprintf(stderr, "\nusage: keywords [-options] phoneNumber\n");
    fprintf(stderr, " -o    specify output file\n -d    specify dictionary file\n");
    fprintf(stderr, "\n **note** \nif using the -d and -o options together, the files\n must come in the same order as the options.\n By default the output file\n is matches.txt, and the dictionary file is dict/7letterdict.txt\n\n");
}

int main(int argc, const char *argv[]) {
    //input argument processessing
    int phnum_index = 1;
    if (argc < 2){
        printErrorMessage();
        return 1;
    }
    else{
        char fileout[50];
        char dict[50];
        char fileoutDefault[] = "matches.txt";
        char dictDefault[] = "dict/7letterdict.txt";
        if(strcmp(argv[1], "-o") == 0 && strcmp(argv[2], "-d") != 0){
            strcpy(fileout, argv[2]);
            strcpy(dict, dictDefault);
            phnum_index = 3;
        }
        else if(strcmp(argv[1], "-d") == 0 && strcmp(argv[2], "-o") != 0){
            strcpy(dict, argv[2]);
            strcpy(fileout, fileoutDefault);
            phnum_index = 3;
        }
        else{
            if(strcmp(argv[1], "-o") == 0 && strcmp(argv[2], "-d") == 0){
                strcpy(fileout, argv[3]);
                strcpy(dict, argv[4]);
                phnum_index = 5;
            }
            else if(strcmp(argv[1], "-d") == 0 && strcmp(argv[2], "-o") == 0){
                strcpy(dict, argv[3]);
                strcpy(fileout, argv[4]);
                phnum_index = 5;
            }
            else{
                if(argv[1][0] == '-'){
                    if(argv[1][1] != 'd' || argv[1][1] != 'c'){
                        printErrorMessage();
                        return 2;
                    }
                }
                else{
                    strcpy(fileout, fileoutDefault);
                    strcpy(dict, dictDefault);
                }
            }
        }
        //end input argument processessing
        
        char inputNumber[8];
        char inum_tmp[9];
        strcpy(inum_tmp, argv[phnum_index]);
        undash(inum_tmp);
        strcpy(inputNumber, inum_tmp);
        
        if(!isValidNumber(inputNumber)){
            fprintf(stderr, "error: phone number must NOT contain any 0s or 1s\n");
            return 3;
        }
        
        StringArray dict_arr;
        initStringArrayWith7LetterWordFile(dict, &dict_arr);
        StringArray enumerations;
        Key keyArr[7];
        initKeyArr(keyArr, inputNumber);
        int indexes[7] = {0};
        internal_enumerate(&enumerations, indexes, keyArr, 7);
        freeKeyArr(keyArr, 7);
        
        
        //threads
        pthread_t other_thread;
        pthread_detach(other_thread);
        SearchArgs sArgs;
        sArgs.enums = &enumerations;
        sArgs.dict = &dict_arr;
        sArgs.fileout = fileout;
        sArgs.search_start = (int)0;
        sArgs.search_end = (int)sArgs.enums->length >> 1;
        
        clock_t start, end; //timing
        float cpu_time_used; //timing
        start = clock(); //timing

        pthread_create(&other_thread, NULL, multi_search_caller, &sArgs);
        internal_search(
                        &enumerations,
                        sArgs.search_end + 1,
                        (int)enumerations.length,
                        &dict_arr,
                        fileout
                        );
        
        
        //timings
        end = clock(); //timing
        cpu_time_used = ((float) (end - start)) / CLOCKS_PER_SEC; //timing
        FILE *timings = fopen("timings.txt", "a");
        fprintf(timings, "%f seconds  |  %s  |  multi thread\n", cpu_time_used, argv[phnum_index]); // timing
        printf("\n%f seconds  |  %s  |  multi thread\n", cpu_time_used, argv[phnum_index]); // timing
        fclose(timings); // timing
        //end timings
        
        freeStringArray(&enumerations);
        freeStringArray(&dict_arr);
        pthread_exit(NULL);
    }

    
    
    return 0;
}
