#!/bin/bash

REPO="https://raw.githubusercontent.com/naev/naev/main/dat/"

function dodiff () {
   basefile=$(basename $1)
   difffile="`pwd`/$2"
   outfile="`pwd`/$1"
   tempdir=`mktemp -d`

   pushd "$tempdir"
   wget "${REPO}$1" -O "$basefile"
   patch "$basefile" < "$difffile"
   mv "$basefile" "$outfile"
   popd
   rmdir "$tempdir"
}

dodiff "scripts/love_shaders.lua" "love_shaders.lua.diff"
