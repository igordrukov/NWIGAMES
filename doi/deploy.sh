#! /bin/bash


if test "$#" -ne 1; then
  PATH=~/Steam/steamapps/common/DOI
 else
  PATH=~/doi/serverfiles
fi

cd $PATH
# first time setup
cp server.cfg doi/cfg/
cp mapcycle_coop.txt  doi/
