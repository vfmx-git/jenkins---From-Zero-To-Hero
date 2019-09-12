!#/bin/bash

NAME=$1
LASTNAME=$2
SHOW=$3

if [ "$SHOW" = "true" ]; then
  echo "Hello, $NAME $LASTNAME!"
else
  echo "If want to see then name, please mark the SHOW option..."
fi


