#!/bin/sh
. ./env.sh
docker push $REGISTRY/caddy:$CADDY_VERSION-2tudor
