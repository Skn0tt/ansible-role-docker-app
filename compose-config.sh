#!/bin/sh

CMD=$1
shift
IMAGE=$1
shift
SET=$@

if [ $CMD = "up" ]
then
  CMD="up -d"
elif [ $CMD = "down" ]
then
  CMD="down"
elif [ $CMD = "start" ]
then
  CMD="start"
elif [ $CMD = "stop" ]
then
  CMD="stop"
fi

COMPOSE_FILE=$(docker-app render $IMAGE $SET)
echo $COMPOSE_FILE | docker-compose -f - pull
echo $COMPOSE_FILE | docker-compose -f - $CMD
