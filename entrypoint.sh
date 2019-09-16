#!/bin/sh
set -e

ACCESS_TOKEN=$1
FOLDER=$2
BRANCH=$3
CNAME=$4
if [ -z "$ACCESS_TOKEN" ]
then
  echo "Please set access_token refer to https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line"
  exit 1
fi

if [ -z "$BRANCH" ]
then
  echo "if you are personal page, set branch to master"
  echo "if you are origianztaion page, set branch gh-pages"
  echo "if you just want test, the default branch is test-wxdlong-page"
  exit 1
fi

if [ -z "$FOLDER" ]
then
  echo "which content you want deploy. related path to the root repo"
  exit 1
fi

COMMIT_NAME=wxdlong
COMMIT_EMAIL=wxdlong@qq.com
git config --global user.email "${COMMIT_EMAIL}" && \
git config --global user.name "${COMMIT_NAME}" && \

REMOTE="https://${ACCESS_TOKEN}@github.com/${GITHUB_REPOSITORY}.git" && \

cd $FOLDER
git init && \
git add --all
git commit -m "Deploy by wxdlong/push-action."
git remote add origin ${REMOTE}
git push --force origin master:${BRANCH}