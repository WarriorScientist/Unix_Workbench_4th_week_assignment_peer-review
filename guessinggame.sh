#!/usr/bin/env bash
#File: guessinggame.sh


echo "How many files are in the current directory? Type an integer and press Enter."
read response


response=num
file_count=$(ls -1 | wc -l)
count=file_count
function guess {
  if [[ $num -ne $count ]]
  then
    while [[ $num -ne $count ]]
    do
      if [[ $num -gt $count ]]
      then
        echo "Your answer is incorrect. It is too high. Guess again:"
        read response
        let num=response
      elif [[ $num -lt $count ]]
      then
        echo "Your answer is incorrect. It is too low. Guess again:"
        read response
        let num=response
      fi
    done
  else [[ $num -eq $count ]]
  fi
  echo "Congratulations. You guessed correctly!"
}


guess
