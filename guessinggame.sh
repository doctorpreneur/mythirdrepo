function print_reply {
        if [ $input -gt $count ]
                 then echo "You have guessed too high. Give it one more try."
        elif [ $input -lt $count ]
                then echo "You have guessed too low. Give it one more try."
        else echo "Corect!"
        fi
        }

function count_files {
        count=$(ls|wc -l)
        }

function guess_loop {

        count_files

        while true
        do
                echo "How many files are in the current directory? Please take a guess"
                read input
                print_reply

                if [ $input -eq $count ]
                        then break
                fi
        done
        }

guess_loop

