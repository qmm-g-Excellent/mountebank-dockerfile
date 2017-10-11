#!/bin/bash

rancher-compose --url ${RANCHER_STACK_URL} \
                --access-key ${RANCHER_ACCESS_KEY} \
                --secret-key ${RANCHER_SECRET_KEY} \
                --project-name mountebank-server \
                --verbose up mountebank-server --pull --upgrade --force-upgrade --confirm-upgrade -d
