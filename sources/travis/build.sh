#!/bin/bash

# if commit was performed on a 'feature' branch
if [[ $TRAVIS_BRANCH =~ ^feature/[a-z0-9](-?[a-z0-9]+)*$ ]] ; then

    # travis ci 'feature' branch build
    :

# if commit was performed on 'develop' branch
elif [[ $TRAVIS_BRANCH == develop ]] ; then

    # travis ci 'develop' branch build
    :

# if commit was performed on a 'release' branch
elif [[ $TRAVIS_BRANCH =~ ^release/[0-9]+\.[0-9]+\.[0-9]+$ ]] ; then

    # travis ci 'release' branch build
    :

# if commit was performed on 'master' branch
elif [[ $TRAVIS_BRANCH == master ]] ; then

    # travis ci 'master' branch build
    :

# if commit was performed on a 'hotfix' branch
elif [[ $TRAVIS_BRANCH =~ ^hotfix/[0-9]+\.[0-9]+\.[0-9]+$ ]] ; then

    # travis ci 'hotfix' branch build
    :
fi
