#revealjs-template

Yet another RevealJS setup, but slightly different.
I wanted my presentations to be independent of revealjs, so I decided to try
and setup the revealjs as submodule.

To use this, first clone this repo, then execute
```
git submodule init
git submodule update
```

This will get the latest version of the revealjs

You should then execute
```
sh ./setup.sh
```
Which will copy over fresh versions of index.html and Gruntfile.js,
and will modify the index.html to use the revealjs prefix for paths for css and such.

If you need to have the npm modules installed locally, you should execute
```
npm install
```

And you should be good to go.