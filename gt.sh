#!/bin/bash

git add .
git commit -m "$1"
git push origin master
echo -e "---------------"
git status

