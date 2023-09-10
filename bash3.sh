#!/bin/bash

#setting option to 14 to keep us in the loop
option=14

#will stay in the loop if option = 14
while [[ $option -eq 14 ]]
do
        #printing out the menu
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
        #reading option from user. If user select something beside anything in the menu the function will exit
        read option
        if [[ $option -eq 1 ]]
        then
                whoami
                echo 'Continue (y/n)'
                read int
                if [[ $int == 'y' ]]
                then 
                        option=14
                else
                        option=13
                fi
        elif [[ $option -eq 2 ]]
        then
                echo $SHELL
                echo 'Continue (y/n)'
                read int
                if [[ $int == 'y' ]]
                then 
                        option=14
                else
                        option=13
                fi
        elif [[ $option -eq 3 ]]
        then
                echo $HOME
                echo 'Continue (y/n)'
                read int
                if [[ $int == 'y' ]]
                then 
                        option=14
                else
                        option=13
                fi
        elif [[ $option -eq 4 ]]
        then
                echo 'OS Info:'
                lsb_release -a
                echo 'Continue (y/n)'
                read int
                if [[ $int == 'y' ]]
                then 
                        option=14
                else
                        option=13
                fi                 
        elif [[ $option -eq 5 ]]
        then
                pwd
                echo 'Continue (y/n)'
                read int
                if [[ $int == 'y' ]]
                then 
                        option=14
                else
                        option=13
                fi
        elif [[ $option -eq 6 ]]
        then
                echo 'Number of Users Currently login'
                who | wc -l
                echo '---------Here a more in depth display of all the known users in the system----------'
                lslogins
                echo 'Continue (y/n)'
                read int
                if [[ $int == 'y' ]]
                then 
                        option=14
                else
                        option=13
                fi
        elif [[ $option -eq 7 ]]
        then
                echo 'Here are all the available shells'
                cat /etc/shells
                # echo 'Number of available shells'
                #  cat /etc/shells | wc -l 
                echo 'Continue (y/n)'
                read int
                if [[ $int == 'y' ]]
                then 
                        option=14
                else
                        option=13
                fi
        elif [[ $option -eq 8 ]]
        then 
                echo 'Hard Disk Information:'
                lsblk
                echo 'Continue (y/n)'
                read int
                if [[ $int == 'y' ]]
                then 
                        option=14
                else
                        option=13
                fi
        elif [[ $option -eq 9 ]]
        then
                echo '------Here are the system CPU information------------'
                cat /proc/cpuinfo
                echo 'Continue (y/n)'
                read int
                if [[ $int == 'y' ]]
                then 
                        option=14
                else
                        option=13
                fi        
        elif [[ $option -eq 10 ]]
        then
                echo 'Memory Info:'
                free
                echo 'Continue (y/n)'
                read int
                if [[ $int == 'y' ]]
                then 
                        option=14
                else
                        option=13
                fi
        elif [[ $option -eq 11 ]]
        then
                echo 'File system information:'
                df -h
                echo 'Continue (y/n)'
                read int
                if [[ $int == 'y' ]]
                then 
                        option=14
                else
                        option=13
                fi
        elif [[ $option -eq 12 ]]
        then
                echo 'Current running Process:'
                ps
                echo 'Continue (y/n)'
                read int
                if [[ $int == 'y' ]]
                then 
                        option=14
                else
                        option=13
                fi        
        elif [[ $option -eq 13 ]]
        then
                option=13 
        fi
done

echo "You are out of the menu"