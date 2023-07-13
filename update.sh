#!/bin/bash

REPO="https://raw.githubusercontent.com/naev/naev/main/dat/"

function dopatch () {
   basefile=$(basename $1)
   patchfile="`pwd`/$2"
   outfile="`pwd`/$1"
   tempdir=`mktemp -d`

   pushd "$tempdir"
   wget "${REPO}$1" -O "$basefile"
   patch "$basefile" < "$patchfile"
   mv "$basefile" "$outfile"
   popd
   rmdir "$tempdir"
}

dopatch "scripts/love_shaders.lua" "love_shaders.lua.patch"
