#!/bin/bash

NAME="static-serve"

if [[ $@ == "-prod" ]]; then
    ENV=prod
else
    ENV=dev
fi

echo "build $NAME in $ENV mode"

docker rm -f $NAME
docker build -t $NAME .
docker run -d --name "$NAME" -p 8080:80 -e DEP_ENV=$ENV $NAME:latest