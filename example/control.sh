#!/bin/bash

BASEDIR=$(dirname "$0")
PYTHON=$(which python)

echo "Starting django server..."

if [ -z "$DB_PORT" ]; then
    DB_PORT=8000
fi

$PYTHON ${BASEDIR}/manage.py runserver 0.0.0.0:$DB_PORT
