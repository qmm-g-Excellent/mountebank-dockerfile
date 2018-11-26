#!/bin/bash

if [ -z "$BUILD_NUMBER" ] ; then
  VERSION="dev"
else
  VERSION="0.0.$BUILD_NUMBER"
fi

docker tag dockerStudy/mountebank-server:$VERSION 52.80.17.137:8889/dockerStudy/mountebank-server:$VERSION
docker tag dockerStudy/mountebank-server:latest 52.80.17.137:8889/dockerStudy/mountebank-server:latest
docker push 52.80.17.137:8889/dockerStudy/mountebank-server:$VERSION
docker push 52.80.17.137:8889/dockerStudy/mountebank-server:latest
