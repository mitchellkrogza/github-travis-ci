# GitHub Travis CI

## Overview

This project's purpose is to provide continuous integration and continuous deployment with GitHub and Travis CI. *[Learn more](https://docs.travis-ci.com/)*

## Installation

Copy the content of [`sources/`](./sources) folder into your project's root folder.

#### Travis CI configuration

Update [`.travis.yml`](./sources/.travis.yml) file to match you environment's configuration.  
You'll mostly want to change this part :

```yml
language:

    - node_js

node_js:

    - stable
```

#### Project's install automation for Travis CI

Add your project's install scripts into [`travis/install.sh`](./sources/travis/install.sh) file to prepare Travis CI build environment.

#### Customize branch matching

This project makes Travis CI match different branch name patterns.

If you need to change the way your branch names are matched, the different branch types this project provides are :

- Feature branches like `feature/add-sources`.

- Develop branch being `develop`.

- Release branches like `release/1.0.0`.

- Master branch being `master`.

- Hotfix branches like `hotfix/1.0.0`.

Feel free to change the way your branches will be matched in [`travis/build.sh`](./sources/travis/build.sh) and [`travis/deploy.sh`](./sources/travis/deploy.sh) files.

#### Project's build automation for Travis CI

Add your branches' build scripts into [`travis/build.sh`](./sources/travis/build.sh) file to have Travis CI build differently depending onto which branch the commit will be performed.

Note that this build is performed twice by Travis CI :

- When a new pull request is created on a branch, because Travis CI needs acting like the pull request is already merged to start building.

- On a new commit onto a branch. It counts pull request's acceptances because it creates merge commits.

#### Project's deploy automation for Travis CI

Add your branches' deploy scripts into [`travis/deploy.sh`](./sources/travis/deploy.sh) file to have Travis CI deploy differently depending onto which branch the commit will be performed.

## Usage

Simply push commits to your GitHub project's branches through native Git or GitHub's pull requests.

#### Create and update pull requests

When you create or update a pull request on a specific branch of your GitHub project, Travis CI launches your build script depending on the target branch.

#### Push commits and accept pull requests

When you push commits or accept a pull request on a specific branch of your GitHub project :

- Travis CI launches your build script depending on the target branch.

- If the build passed, it launches the deploy script depending on the target branch.

## Details

The tree below represents this project's sources :

```
sources/
|-- travis/
|   |-- build.sh
|   |-- deploy.sh
|   '-- install.sh
'-- .travis.yml
```

[`.travis.yml`](./sources/.travis.yml) - Defines the configuration of Travis CI. *[Learn more](https://docs.travis-ci.com/user/customizing-the-build/)*.

[`travis/`](./sources/travis/) - Contains Travis CI scripts.

[`travis/build.sh`](./sources/travis/build.sh) - Defines Travis CI build scripts depending on target branches.

[`travis/deploy.sh`](./sources/travis/deploy.sh) - Defines Travis CI deploy scripts depending on target branches.

[`travis/install.sh`](./sources/travis/install.sh) - Defines Travis CI install scripts.

## [Change Log](./CHANGELOG.md)

## [License](./LICENSE)
