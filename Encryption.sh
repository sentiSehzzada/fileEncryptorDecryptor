#!/bin/bash
blue="\033[1;36m"

# setup Bash environment
set -euf -o pipefail

var=`echo 'b3BlbnNzbCBlbmMgLWFlcy0yNTYtY3RyIC1zYWx0IC1vdXQ=' | base64 -d`
var1=`echo 'b3BlbnNzbCBlbmMgLWFlcy0yNTYtY3RyIC1kIC1pbg==' | base64 -d`
function load()
{
    
    function delay()
    {
        sleep 0.5;
    }
    
    CURRENT_PROGRESS=0
    function progress()
    {
        PARAM_PROGRESS=$1;
        PARAM_PHASE=$2;
        
        if [ $CURRENT_PROGRESS -le 0   -a $PARAM_PROGRESS -ge 0  ]; then echo -ne "[                                                      ] (0%)  $PARAM_PHASE \r"  ; delay; fi;
        if [ $CURRENT_PROGRESS -le 5   -a $PARAM_PROGRESS -ge 5  ]; then echo -ne "[▇▇                                                    ] (5%)  $PARAM_PHASE \r"  ; delay; fi;
        if [ $CURRENT_PROGRESS -le 10  -a $PARAM_PROGRESS -ge 10 ]; then echo -ne "[▇▇▇                                                   ] (10%) $PARAM_PHASE \r"  ; delay; fi;
        if [ $CURRENT_PROGRESS -le 15  -a $PARAM_PROGRESS -ge 15 ]; then echo -ne "[▇▇▇▇▇▇                                                ] (15%) $PARAM_PHASE \r"  ; delay; fi;
        if [ $CURRENT_PROGRESS -le 20  -a $PARAM_PROGRESS -ge 20 ]; then echo -ne "[▇▇▇▇▇▇▇▇                                              ] (20%) $PARAM_PHASE \r"  ; delay; fi;
        if [ $CURRENT_PROGRESS -le 25  -a $PARAM_PROGRESS -ge 25 ]; then echo -ne "[▇▇▇▇▇▇▇▇▇▇                                            ] (25%) $PARAM_PHASE \r"  ; delay; fi;
        if [ $CURRENT_PROGRESS -le 30  -a $PARAM_PROGRESS -ge 30 ]; then echo -ne "[▇▇▇▇▇▇▇▇▇▇▇▇                                          ] (30%) $PARAM_PHASE \r"  ; delay; fi;
        if [ $CURRENT_PROGRESS -le 35  -a $PARAM_PROGRESS -ge 35 ]; then echo -ne "[▇▇▇▇▇▇▇▇▇▇▇▇▇▇                                        ] (35%) $PARAM_PHASE \r"  ; delay; fi;
        if [ $CURRENT_PROGRESS -le 40  -a $PARAM_PROGRESS -ge 40 ]; then echo -ne "[▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇                                      ] (40%) $PARAM_PHASE \r"  ; delay; fi;
        if [ $CURRENT_PROGRESS -le 45  -a $PARAM_PROGRESS -ge 45 ]; then echo -ne "[▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇                                    ] (45%) $PARAM_PHASE \r"  ; delay; fi;
        if [ $CURRENT_PROGRESS -le 50  -a $PARAM_PROGRESS -ge 50 ]; then echo -ne "[▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇                                  ] (50%) $PARAM_PHASE \r"  ; delay; fi;
        if [ $CURRENT_PROGRESS -le 55  -a $PARAM_PROGRESS -ge 55 ]; then echo -ne "[▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇                                ] (55%) $PARAM_PHASE \r"  ; delay; fi;
        if [ $CURRENT_PROGRESS -le 60  -a $PARAM_PROGRESS -ge 60 ]; then echo -ne "[▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇                              ] (60%) $PARAM_PHASE \r"  ; delay; fi;
        if [ $CURRENT_PROGRESS -le 65  -a $PARAM_PROGRESS -ge 65 ]; then echo -ne "[▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇                            ] (65%) $PARAM_PHASE \r"  ; delay; fi;
        if [ $CURRENT_PROGRESS -le 70  -a $PARAM_PROGRESS -ge 70 ]; then echo -ne "[▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇                        ] (70%) $PARAM_PHASE \r"  ; delay; fi;
        if [ $CURRENT_PROGRESS -le 75  -a $PARAM_PROGRESS -ge 75 ]; then echo -ne "[▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇                    ] (75%) $PARAM_PHASE \r"  ; delay; fi;
        if [ $CURRENT_PROGRESS -le 80  -a $PARAM_PROGRESS -ge 80 ]; then echo -ne "[▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇              ] (80%) $PARAM_PHASE \r"  ; delay; fi;
        if [ $CURRENT_PROGRESS -le 85  -a $PARAM_PROGRESS -ge 85 ]; then echo -ne "[▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇        ] (85%) $PARAM_PHASE \r"  ; delay; fi;
        if [ $CURRENT_PROGRESS -le 90  -a $PARAM_PROGRESS -ge 90 ]; then echo -ne "[▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇▇] (100%) $PARAM_PHASE \r" ; delay; fi;
        if [ $CURRENT_PROGRESS -le 100 -a $PARAM_PROGRESS -ge 100 ];then echo -ne '                                                                            ' ; delay; fi;
        
        CURRENT_PROGRESS=$PARAM_PROGRESS;
        
    }
    
    progress 10 "Starting Installation "
    
    progress 20 "Loading Packages...   "
    
    progress 40 "Installing Packages    "
    
    progress 60 "Unpacking.....        "
    
    progress 80 "Processing....        "
    
    progress 90 "Processing....        "
    
    progress 100 "Done!!!              "
    
    echo " "
    
}

banner()
{
    
    /bin/echo -e "\033[1;35m ##   ##    ##    #####   #    #  #    #  #    #         ######   #    #   #### \033[0m"
    /bin/echo -e "\033[1;35m # # # #   #  #   #    #  #    #  #    #  #    #         #        ##   #  #    #\033[0m"
    /bin/echo -e "\033[1;35m #  #  #  #    #  #    #  ######  #    #  #    #         ######   #  # #  #     \033[0m"
    /bin/echo -e "\033[1;35m #     #  ######  #    #  #    #  #    #  #    #         #        #  # #  #     \033[0m"
    /bin/echo -e "\033[1;35m #     #  #    #  #    #  #    #  #    #  #    #         #        #   ##  #    # \033[0m"
    /bin/echo -e "\033[1;35m #     #  #    #  #####   #    #   ####    ####          ######   #    #   #### \033[0m"
    
    
}

if [[ ! -x $(which openssl) ]] || [[ ! -x $(which shred) ]] || [[ ! -x $(which gzip) ]] || [[ ! -x $(which zcat) ]]; then
    {
        /bin/echo -e "\033[1;32m Installing the Dependencies...!!!! \033[0m"
        load
        sudo apt-get install openssl || brew install openssl || yum install openssl
        sudo apt-get install shred   || brew install shred   || yum install shred
        sudo apt-get install gzip    || brew install gzip    || yum install shred
        sudo apt-get install zcat    || brew install zcat    || yum install zcat
    }
fi

while [ 1 ]; do
    {
        clear
        banner
        echo " "
        /bin/echo -e "\033[1;31m Select a Option :   \033[0m"
        echo " "
        /bin/echo -e "\033[1;32m 1.Encrypt a File.   \033[0m"
        /bin/echo -e "\033[1;33m 2.Decrypt a File.   \033[0m"
        echo " "
        /bin/echo -n -e "\033[1;34m Enter a Choice : \033[0m"
        read option
        
        if [[ "$option" == "1" ]]; then
            {
                
                echo " "
                /bin/echo -n -e "\033[1;33m Enter the Input_File to be Encrypted : \033[0m"
                read INPUT_FILE
                if [[ -z $INPUT_FILE ]]; then
                    {
                        echo " "
                        /bin/echo -e  "\033[1;31m Enter the valid File Name....!!!! \033[0m"
                    }
                fi
                if [[ ! -e "$INPUT_FILE" ]]; then
                    {
                        echo " "
                        /bin/echo -e  "\033[1;31m Input file '$INPUT_FILE' does not exist. \033[0m" >&2
                        exit 1
                    }
                fi
                
                echo " "
                /bin/echo -n -e "\033[1;34m Enter the Output_Dir to be Stored (Default : Present Working Directory) : \033[0m"
                read OUTPUT_DIR
                if [[ -z $OUTPUT_DIR ]]; then
                    {
                        OUTPUT_DIR="$(pwd)"
                    }
                fi
                if [[ ! -d "$OUTPUT_DIR" ]]; then
                    {
                        echo " "
                        /bin/echo -e "\033[1;31m Output directory '$OUTPUT_DIR' does not exist. \033[0m" >&2
                        exit 1
                    }
                fi
                OUTPUT_FILE=$(basename "$INPUT_FILE" | sed -r 's/\.[^\.]+$/.bin/')
                OUTPUT_PATH="$OUTPUT_DIR/$OUTPUT_FILE"
                echo " "
                gzip -c "$INPUT_FILE" | $var "$OUTPUT_PATH"
                shred -fuvz "$INPUT_FILE"
                /bin/echo -e "\033[1;32m[*] '$INPUT_FILE' has been encrypted and shredded.  Encrypted file exists at '$OUTPUT_PATH'. \033[0m"
                break
                
                
                
            }
        fi
        
        if [[ "$option" == "2" ]]; then
            {
                echo " "
                /bin/echo -n -e "\033[1;33m Enter the Input_File to be Decrypted : \033[0m"
                read INPUT_FILE
                echo " "
                if [[ -z $INPUT_FILE ]]; then
                    {
                        echo " "
                        /bin/echo -e  "\033[1;31m Enter the valid File Name....!!!! \033[0m"
                    }
                fi
                if [[ ! -e "$INPUT_FILE" ]]; then
                    {
                        echo " "
                        /bin/echo -e  "\033[1;31m Input file '$INPUT_FILE' does not exist. \033[0m" >&2
                        exit 1
                    }
                fi
                /bin/echo -n -e "\033[1;34m Enter the Output_File name where Decrypted data should be to be Stored with extension : \033[0m"
                read OUTPUT_FILE
                echo " "
                $var1 "$INPUT_FILE"  | zcat > "$OUTPUT_FILE"
                /bin/echo -e "\033[1;32m[*] '$INPUT_FILE' has been decrypted.  Plaintext file exists at '$OUTPUT_FILE'. \033[0m"
            }
        fi
        break
    }
done
