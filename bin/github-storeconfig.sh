#!/bin/bash
REPO_FOLDER="/home/sio/dotfiles"

NAME=`basename "$*"`
mv "$*" $REPO_FOLDER
ln -s $REPO_FOLDER/"$NAME" "$*"
cd $REPO_FOLDER
git add "$NAME"
git commit -m "Added $NAME" "$NAME"
git push origin master
