#!/bin/bash

if [[ $TRAVIS_EVENT_TYPE = "pull_request" ]]; then
    SKIP_UPLOAD=1
elif [[ $TRAVIS_EVENT_TYPE = "push" ]]; then
    if [[ $TRAVIS_BRANCH = "master" ]]; then
        SKIP_UPLOAD=1
    elif [[ $TRAVIS_TAG != "" ]]; then
        RELEASE_BUILD=1
    fi
else
    SKIP_UPLOAD=1
fi
