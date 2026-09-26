#!/bin/sh
. ./env.sh
FROM_IMAGE=$IMAGE:$IMAGE_VERSION
BUILT_IMAGE=$REGISTRY/$IMAGE-$SUFFIX:$IMAGE_VERSION
doppler run -- sh -c 'echo "$ROOT_CA_CERT" > $CA_ROOT'
docker buildx build --platform linux/amd64 --build-arg FROM_IMAGE=$FROM_IMAGE --build-arg CA_ROOT=$CA_ROOT -t $BUILT_IMAGE .
rm $CA_ROOT
