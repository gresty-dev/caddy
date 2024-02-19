#!/bin/sh
. ./env.sh
step ca root $CA_ROOT
docker build --build-arg CADDY_VERSION=$CADDY_VERSION --build-arg CA_ROOT=$CA_ROOT -t $REGISTRY/caddy:$CADDY_VERSION-2tudor .
rm $CA_ROOT