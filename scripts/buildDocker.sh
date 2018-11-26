#!/bin/bash

if [ -z "$BUILD_NUMBER" ] ; then
  VERSION="dev"
else
  VERSION="0.0.$BUILD_NUMBER"
fi

docker build -t dockerStudy/mountebank-server:$VERSION .
docker tag dockerStudy/mountebank-server:$VERSION dockerStudy/mountebank-server:latest
