#!/bin/sh
if [ "${UPDATE_REPO}" != "yes" ]; then exit; fi
git config --global user.email "flukiluke@gmail.com"
git config --global user.name "Autobuild process"
git add --all internal/source/
git commit --message "Autobuild update [ci skip]"
git remote rm origin
git remote add origin https://${GH_TOKEN}@github.com/flukiluke/qb64.git > /dev/null 2>&1
git push origin HEAD:master > /dev/null 2>&1



