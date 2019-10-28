#!/bin/bash

git config --global user.email "CI-Bot@travis.com"
git config --global user.name "Travis Bot"

git add ./tables > 2>&1
git commit -m "Deploy tables"
git push https://$GITHUB_TOKEN:x-oauth-basic@github.com/clarin-eric/resource-families-html-generator.git travis

