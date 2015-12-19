#!/bin/bash

git branch -D gh-pages
git checkout --orphan gh-pages

gulp clean
gulp prepare
gulp build
gulp compile

rm -rf assets
rm -rf config
rm -rf node_modules
rm -rf slides
rm -rf templates
rm -rf build.sh
rm -rf compile.sh
rm -rf gulpfile.js
rm -rf index.html
rm -rf package.json
rm -rf README.md
rm -rf .gitignore

mv dist/* .
rm -rf dist
rm -rf gh-pages.sh

git commit -am "Init :shipit:"