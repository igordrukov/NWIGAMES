#! /bin/bash

if test "$#" -ne 1; then
  PATH=~/Steam/steamapps/common/sandstorm_server
 else
  PATH=~/sandstorm/serverfiles
fi

cd $PATH
# first time setup
mkdir -p Insurgency/Config/Server
cd Insurgency/Config/Server
mv mapcycle.txt .

cd $PATH
mkdir -p  Insurgency/Saved/Config/LinuxServer
cd Insurgency/Saved/Config/LinuxServer
mv Game.ini .


