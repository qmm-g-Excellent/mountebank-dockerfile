#!/bin/bash

if [ -z "$BUILD_NUMBER" ] ; then
  VERSION="dev"
else
  VERSION="0.0.$BUILD_NUMBER"
fi

docker build -t daimler/mountebank-server:$VERSION .
docker tag daimler/mountebank-server:$VERSION daimler/mountebank-server:latest
