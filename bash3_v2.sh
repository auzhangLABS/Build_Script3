#!/bin/bash
# this is an updated version of bash3. This version utlize the uses of cases statement as well as adding additional error handling to the contiune statement

option=14

while [[ $option -eq 14 ]]
do
        echo 'Sys Info Menu'
        echo '1. Currently logged user'
        echo '2. Your shell directory'
        echo '3. Home directory'
        echo '4. Os name & version'
        echo '5. Current working directory'
        echo '6. Number of users logged in'
        echo '7. Show all available shells in your system'
        echo '8. Hard disk information'
        echo '9. Cpu information'
        echo '10. Memory information'
        echo '11. File system information'
        echo '12. Currently running process'
        echo '13. Exit'
        echo 'Choose your option: '
        read option 
        case $option in
                "1")
                whoami
                ;;
                "2")
                echo $SHELL
                ;;
                "3")
                echo $HOME
                ;;
                "4")
                lsb_release -a
                ;;
                "5")
                pwd
                ;;
                "6")
                who |wc -l
                ;;
                "7")
                cat /etc/shells
                ;;
                "8")
                lsblk
                ;;
                "9")
                cat /proc/cpuinfo
                ;;
                "10")
                free
                ;;
                "11")
                df -h
                ;;
                "12")
                ps
                ;;
        esac
                echo
                echo "Continue (y/n)"
                read int
                if  [[ ${int,,} == 'y' ]] || [[ ${int,,} == 'yes' ]]
                then 
                        option=14

                else 
                        option=13
                fi
done
echo "You are out of the menu"
