#!/bin/bash -eu

NAMESPACE=siphilia
TAG=$(cat version)

if [ $# -eq 1 ]; then
  NAMESPACE=${1}
elif [ $# -gt 1 ]; then
  NAMESPACE=${1}
  TAG=${2}
fi

docker build -t ${NAMESPACE}/apt-cacher-ng:${TAG} .