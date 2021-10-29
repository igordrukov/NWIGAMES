#! /bin/bash


if test "$#" -ne 1; then
  PATH=~/Steam/steamapps/common/DOI
 else
  PATH=~/doi/serverfiles
fi

cd $PATH
# first time setup
mv server.cfg doi/cfg/
mv mapcycle_coop.txt  doi/
