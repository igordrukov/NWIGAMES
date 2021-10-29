#! /bin/bash


if test "$#" -ne 1; then
  GAMEPATH=~/Steam/steamapps/common/DOI
 else
  GAMEPATH=~/doi/serverfiles
fi

cd $GAMEPATH
echo $GAMEPATH
# first time setup
cp server.cfg doi/cfg/
cp mapcycle_coop.txt  doi/
