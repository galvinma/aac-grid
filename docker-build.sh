#!/bin/bash

if [ -z "$1" ]
  then
    echo "Missing version..."
    exit 1
else 
    VERSION=$1
fi

BASE_DIR="$PWD"
cd $BASE_DIR/ui && ./docker-build.sh $VERSION
cd $BASE_DIR/api && ./docker-build.sh $VERSION
cd $BASE_DIR/db &&./docker-build.sh $VERSION