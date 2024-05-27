#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess --tuples-only -c"
echo -e "\n~~~~~ Number Guessing Game ~~~~~\n"
echo -e "Enter your username:\n"
read USERNAME
while [ ${#USERNAME} -gt 22 ]; do
    echo "Username must be 22 characters or less. Please enter again:"
    read USERNAME
done
USER_NAMEID=$($PSQL "SELECT username_id FROM usernames WHERE username = '$USERNAME'")

if [[ -z $USER_NAMEID ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_USER=$($PSQL "INSERT INTO usernames (username) VALUES('$USERNAME')")
  USER_NAMEID=$($PSQL "SELECT username_id FROM usernames WHERE username = '$USERNAME'")
else
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) AS total_games FROM games WHERE username_id = '$USER_NAMEID'")
  BEST_GAME=$($PSQL "SELECT MIN(score) AS min_score FROM games WHERE username_id = '$USER_NAMEID'")
  echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
fi
RANDOM_NUMBER=$((RANDOM % 1000 + 1))
echo "$RANDOM_NUMBER"
ATTEMPT=0
echo "Guess the secret number between 1 and 1000:"
while true
  do
  read USER_NUMBER
  if [[ $USER_NUMBER =~ ^[0-9]+$ ]]
  then
    ((ATTEMPT++))
      if [[ "$USER_NUMBER" -eq "$RANDOM_NUMBER" ]]; then
        echo "You guessed it in $ATTEMPT tries. The secret number was $RANDOM_NUMBER. Nice job!"
          INSERT_GAME=$($PSQL "INSERT INTO games (username_id, score) VALUES ($USER_NAMEID, $ATTEMPT)")
        break  
      elif [[ "$USER_NUMBER" -gt "$RANDOM_NUMBER" ]]; then
        echo "It's lower than that, guess again:"
      else
        echo "It's higher than that, guess again:"
      fi
  else
    echo "That is not an integer, guess again:"
  fi
  done
