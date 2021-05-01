#!/bin/sh
echo "In start-up script. Starting aac-grid API..."

export LC_ALL=C.UTF-8
export LANG=C.UTF-8
export FLASK_APP=/flaskr/api.py


echo "Waiting for postgres..."
while ! nc -z $POSTGRES_HOST $POSTGRES_PORT; do
    sleep 0.1
done

echo "Postgres started"

sh -c "flask run -h 0.0.0.0 -p 3061"