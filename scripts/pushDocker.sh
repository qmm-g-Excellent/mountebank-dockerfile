#!/bin/bash

if [ -z "$BUILD_NUMBER" ] ; then
  VERSION="dev"
else
  VERSION="0.0.$BUILD_NUMBER"
fi

docker tag daimler/mountebank-server:$VERSION 52.80.17.137:8889/daimler/mountebank-server:$VERSION
docker tag daimler/mountebank-server:latest 52.80.17.137:8889/daimler/mountebank-server:latest
docker push 52.80.17.137:8889/daimler/mountebank-server:$VERSION
docker push 52.80.17.137:8889/daimler/mountebank-server:latest
