#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login --username "$DOCKER_USERNAME" --password-stdin

if [ $TRAVIS_BRANCH != "master" ]; then
    docker tag locnh/mastercardfxbot locnh/mastercardfxbot:$TRAVIS_BRANCH
    docker push locnh/mastercardfxbot:$TRAVIS_BRANCH
else
    docker push locnh/mastercardfxbot
fi
