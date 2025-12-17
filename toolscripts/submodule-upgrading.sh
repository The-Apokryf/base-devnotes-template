#!/bin/sh

REPO_VER="[js_ver:$(npm ls | grep $PWD | sed 's/\s.*$//')&py_ver:$(uv version)]"

git submodule foreach "git fetch"
git submodule foreach "git pull"
git submodule foreach "git add ."
git submodule foreach "git commit -m 'full R.D.D.D.A.T. at $REPO_VER before quick assertion'"
git submodule foreach "git push"