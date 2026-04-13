@echo off
git checkout gh-pages
git checkout main -- index.html
git commit -m "deploy"
git push origin gh-pages
git checkout main
echo Done: deployed to gh-pages
