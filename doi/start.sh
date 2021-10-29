#! /bin/bash

if test "$#" -ne 1; then
  PATH=~/Steam/steamapps/common/DOI
 else
  PATH=~/doi/serverfiles
fi

cd $PATH

/bin/bash srcds_run +map "dunkirk stronghold" +maxplayers 4 -debug
