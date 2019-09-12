#!/usr/bin/env sh
npm i
npm i npm-check-updates -g
ncu -u
npm i hexo-cli -g
hexo clean
git clone --depth 1 --recursive https://github.com/Tangyeye/hexo-theme-next themes/next
mv source/themes/next/source/css/_custom/custom.styl themes/next/source/css/_custom/
cp source/images/* themes/next/source/images/
find source/themes/next/ -type f | xargs -I {} mv {} themes/next/
hexo generate
