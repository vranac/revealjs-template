#!/bin/bash
ln -s ./revealjs/Gruntfile.js ./Gruntfile.js
cp ./revealjs/index.html ./index.html
sed -i '' 's/"css\//"revealjs\/css\//g' index.html
sed -i '' 's/"lib\/css/"revealjs\/lib\/css\//g' index.html
sed -i '' "s/'css\/print/'revaljs\/css\/print/g" index.html
sed -i '' 's/"lib\/js/"revealjs\/lib\/js/g' index.html
sed -i '' 's/"js/"revealjs\/js/g' index.html
sed -i '' "s/'plugin\//'revealjs\/plugin\//g" index.html