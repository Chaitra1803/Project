#!/bin/bash

if (["$GIT_BRANCH" == 'origin/dev' ]) then
    build.sh
    docker login -u veera1808 dckr_pat_C7FMRRRiGBfoZvetq6DDyyYf8OU
    docker tag my-img:$TAG $DOCKER_BFLASK_IMAGE:$TAG
    docker push $DOCKERHUB_PUBLICREPO:$TAG


elif ([ "$GIT_BRANCH" == 'origin/main' ]) then
    build.sh
    docker login -u veera1808 dckr_pat_C7FMRRRiGBfoZvetq6DDyyYf8OU
    docker tag my-img:$TAG $DOCKER_BFLASK_IMAGE:$TAG
    docker push $DOCKERHUB_PRIVATEREPO:$TAG



   
fi

