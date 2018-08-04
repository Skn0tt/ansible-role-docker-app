#!/bin/sh

CMD=$1
shift
IMAGE=$1
shift
SET=$@

case $CMD in
  up)
    CMD="up -d"
    ;;
  down)
    CMD="down"
    ;;
  start)
    CMD="start"
    ;;
  stop)
    CMD="stop"
    ;;
  *)
    echo "Unknown Command"
    ;;
esac

COMPOSE_FILE=$(docker-app render $IMAGE $SET)
echo "$COMPOSE_FILE" | docker-compose -f - pull
echo "$COMPOSE_FILE" | docker-compose -f - $CMD
