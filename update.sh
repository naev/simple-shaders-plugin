#!/bin/bash

set -x

REPO="https://raw.githubusercontent.com/naev/naev/main/dat/"

function dodiff () {
   basefile=$(basename $1)
   difffile="`pwd`$2"
   tempdir=`mktemp -d`

   pushd "$tempdir"
   echo wget "${repo}${$}" -o "$basefile"
   echo patch "$basefile" "$difffile"
   echo cp "$basefile" "$1"
   popd
}

dodiff "scripts/love_shaders.lua" "love_shaders.lua.diff"
