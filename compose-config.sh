#!/bin/sh

CMD=$1
shift
IMAGE=$1
shift
SET=$@

if [ $CMD = "up" ]
then
  $CMD = "up -d"
elif [ $CMD = "down" ]
then
  $CMD = "down"
elif [ $CMD = "start" ]
then
  $CMD = "start"
elif [ $CMD = "stop" ]
then
  $CMD = "stop"
fi

docker-app render $IMAGE $SET | docker-compose -f - $CMD
