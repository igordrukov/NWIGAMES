#! /bin/bash

if test "$#" -ne 1; then
  GAMEPATH=~/Steam/steamapps/common/DOI
 else
  GAMEPATH=~/doi/serverfiles
fi

cd $GAMEPATH

/bin/bash srcds_run +map "breville stronghold"
#/bin/bash srcds_run +map "dunkirk stronghold" +maxplayers 4 -debug
