#! /bin/bash

PRESENTDIR=$PWD

if test "$#" -ne 1; then
  GAMEPATH=~/Steam/steamapps/common/DOI
 else
  GAMEPATH=~/doi/serverfiles
fi

cd $GAMEPATH
echo $GAMEPATH
# first time setup
cp $PRESENTDIR/server.cfg doi/cfg/
cp $PRESENTDIR/mapcycle_coop.txt  doi/
