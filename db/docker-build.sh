#!/bin/bash

if [ -z "$1" ]
  then
    echo "Missing version..."
    exit 1
else 
    VERSION=$1
fi

docker build . -t aac-grid-db:$VERSION 