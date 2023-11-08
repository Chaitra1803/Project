#!/bin/bash

if (["$GIT_BRANCH" == 'origin/dev' ]) then
    ./build.sh
    docker login -u veera1808 dckr_pat_C7FMRRRiGBfoZvetq6DDyyYf8OU
    docker tag react-appimg veera1808/dev_repo
    docker push veera1808/dev_repo


elif ([ "$GIT_BRANCH" == 'origin/main' ]) then
   ./ build.sh
    docker login -u veera1808 dckr_pat_C7FMRRRiGBfoZvetq6DDyyYf8OU
    docker tag react-appimg veera1808/prod_repo
    docker push veera1808/prod_repo


   
fi

