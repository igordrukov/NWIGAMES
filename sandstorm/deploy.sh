#! /bin/bash

PRESENTDIR=PWD

if test "$#" -ne 1; then
  GAMEPATH=~/Steam/steamapps/common/sandstorm_server
 else
  GAMEPATH=~/sandstorm/serverfiles
fi

cd $GAMEPATH
# first time setup
mkdir -p Insurgency/Config/Server
cd Insurgency/Config/Server
cp $PRESENTDIR/mapcycle.txt .

cd $GAMEPATH
mkdir -p  Insurgency/Saved/Config/LinuxServer
cd Insurgency/Saved/Config/LinuxServer
cp $PRESENTDIR/Game.ini .


