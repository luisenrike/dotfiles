#!/bin/sh

git filter-branch --env-filter '
CORRECT_NAME="Luis Perez"
CORRECT_EMAIL="luisenrike@leddgroup.com"
export GIT_COMMITTER_NAME="$CORRECT_NAME"
export GIT_COMMITTER_EMAIL="$CORRECT_EMAIL"
export GIT_AUTHOR_NAME="$CORRECT_NAME"
export GIT_AUTHOR_EMAIL="$CORRECT_EMAIL"
' --tag-name-filter cat -- --branches --tags