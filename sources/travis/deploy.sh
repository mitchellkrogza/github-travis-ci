#!/bin/bash

# travis ci deploy must not be performed on pull requests
if [[ $TRAVIS_PULL_REQUEST == false ]] ; then

    # if commit was performed on a 'feature' branch
    if [[ $TRAVIS_BRANCH =~ ^feature/[a-z0-9](-?[a-z0-9]+)*$ ]] ; then

        # travis ci 'feature' branch deploy
        :

    # if commit was performed on 'develop' branch
    elif [[ $TRAVIS_BRANCH == develop ]] ; then

        # travis ci 'develop' branch deploy
        :

    # if commit was performed on a 'release' branch
    elif [[ $TRAVIS_BRANCH =~ ^release/[0-9]+\.[0-9]+\.[0-9]+$ ]] ; then

        # travis ci 'release' branch deploy
        :

    # if commit was performed on 'master' branch
    elif [[ $TRAVIS_BRANCH == master ]] ; then

        # travis ci 'master' branch deploy
        :

    # if commit was performed on a 'hotfix' branch
    elif [[ $TRAVIS_BRANCH =~ ^hotfix/[0-9]+\.[0-9]+\.[0-9]+$ ]] ; then

        # travis ci 'hotfix' branch deploy
        :
    fi
fi
