#!/usr/bin/env bash
#File: guessinggame.sh


echo "How many files are in the current directory? Type an integer and press Enter."
read response


response=num

function guess {
  if [[ $num -ne 5 ]]
  then
    while [[ $num -ne 5 ]]
    do
      if [[ $num -gt 5 ]]
      then
        echo "Your answer is incorrect. It is too high. Guess again:"
        read response
        let num=response
      elif [[ $num -lt 5 ]]
      then
        echo "Your answer is incorrect. It is too low. Guess again:"
        read response
        let num=response
      fi
    done
  else [[ $num -eq 5 ]]
  fi
  echo "Congratulations. You guessed correctly!"
}


guess