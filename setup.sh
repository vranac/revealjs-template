#!/bin/bash

if [[ "$(uname -s)" =~ "MINGW32_NT" ]] || [[ "$(uname -s)" =~ "CYGWIN_NT" ]]; then
    cp -f ./revealjs/Gruntfile.js ./Gruntfile.js
    cp -f ./revealjs/package.json ./package.json
else
    ln -nsf ./revealjs/Gruntfile.js ./Gruntfile.js
    ln -nsf ./revealjs/package.json ./package.json
fi

cp -f ./revealjs/index.html ./index.html
sed -i '' 's/"css\//"revealjs\/css\//g' index.html
sed -i '' 's/"lib\/css/"revealjs\/lib\/css\//g' index.html
sed -i '' "s/'css\/print/'revaljs\/css\/print/g" index.html
sed -i '' 's/"lib\/js/"revealjs\/lib\/js/g' index.html
sed -i '' 's/"js/"revealjs\/js/g' index.html
sed -i '' "s/'plugin\//'revealjs\/plugin\//g" index.html