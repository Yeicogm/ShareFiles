#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else

  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
  echo $($PSQL "TRUNCATE teams, games")
# Archivo CSV
CSV_FILE="games.csv"
# Leer el archivo CSV y extraer equipos únicos
declare -A teams
while IFS=, read -r year round winner opponent winner_goals opponent_goals
do
  if [[ "$winner" != "winner" ]]; then
    teams["$winner"]=1
    teams["$opponent"]=1
  fi
done < "$CSV_FILE"

# Insertar equipos únicos en la tabla teams
for team in "${!teams[@]}"
do
  $PSQL "INSERT INTO teams (name) VALUES ('$team') ON CONFLICT (name) DO NOTHING;"
 echo 'Inserto: $team'
done

# Insertar datos en la tabla games
while IFS=, read -r year round winner opponent winner_goals opponent_goals
do
  if [[ "$year" != "year" ]]; then
    winner_id=$($PSQL "SELECT team_id FROM teams WHERE name='$winner';")
    opponent_id=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent';")
    $PSQL "INSERT INTO games (year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($year, '$round', $winner_id, $opponent_id, $winner_goals, $opponent_goals);"
  fi
done < "$CSV_FILE"


fi

# Do not change code above this line. Use the PSQL variable above to query your database.
