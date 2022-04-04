#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run generate

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git add .
git commit -m 'deploy by script'
git subtree push --prefix dist origin gh-pages 
# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git main

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git main:gh-pages
# git push -f https://github.com/locuracausal/new-site-test.git master:gh-pages
