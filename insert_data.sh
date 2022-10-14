#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
exec < games.csv
read header
while IFS="," read -r YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
  # insert winner team into teams if not existed
  WINNER_ID=$($PSQL "select team_id from teams where name = '$WINNER'")
  if [[ -z $WINNER_ID ]]
  then
    WINNER_ID=$($PSQL "insert into teams values(default, '$WINNER') returning team_id" | head -1)
  fi

  # insert opponent team into teams if not existed
  OPPONENT_ID=$($PSQL "select team_id from teams where name = '$OPPONENT'")
  if [[ -z $OPPONENT_ID ]]
  then
    OPPONENT_ID=$($PSQL "insert into teams values(default, '$OPPONENT') returning team_id" | head -1)
  fi

  #insert game data into games table
  INSERT_RESUlT=$($PSQL "insert into games values(default, $YEAR, $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS, '$ROUND')")
done