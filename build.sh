#!/bin/sh
. ./env.sh
step ca root
docker build --build-arg CADDY_VERSION=$CADDY_VERSION -t $REGISTRY/caddy:$CADDY_VERSION-2tudor .
rm $CA_ROOT