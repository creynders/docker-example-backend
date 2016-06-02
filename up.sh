#!/usr/bin/env bash
INSTANCE=$1
PORT=$2
if [ -z "$INSTANCE" ] || [ -z "$PORT" ] ; then
    echo "Usage: $ ./up.sh <instance> <port>"
    exit 1
fi
SERVICE="backend"

PORT="$PORT" APP_NAME="$INSTANCE.$SERVICE" docker-compose -p "$INSTANCE" -f dc.prod.yml up -d "$SERVICE"