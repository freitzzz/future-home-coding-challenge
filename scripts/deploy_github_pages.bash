#!/bin/bash

GP_REPO_PATH="../future-home-live/"

REPO_TO_BUILD_APP_PATH="example"

FLUTTER_COMMAND_ALIAS="flutter"

DEPLOY_COMMIT_MESSAGE="arteiro best konichua bonks welele"

cd $REPO_TO_BUILD_APP_PATH

cd -

$FLUTTER_COMMAND_ALIAS build web --release --web-renderer html

cp -R $REPO_TO_BUILD_APP_PATH/build/web/* $GP_REPO_PATH

cd $GP_REPO_PATH

cd -

git add .

git commit -m "$DEPLOY_COMMIT_MESSAGE"

git push