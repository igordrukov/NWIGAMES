#! /bin/bash

strMapList=()
strMapList+=("Canyon?Scenario=Scenario_Crossing_Checkpoint_Insurgents")
strMapList+=("Canyon?Scenario=Scenario_Crossing_Checkpoint_Security")
strMapList+=("Farmhouse?Scenario=Scenario_Farmhouse_Checkpoint_Insurgents")
strMapList+=("Farmhouse?Scenario=Scenario_Farmhouse_Checkpoint_Security")
strMapList+=("Farmhouse?Scenario=Scenario_Farmhouse_Survival")
strMapList+=("Town?Scenario=Scenario_Hideout_Checkpoint_Insurgents")
strMapList+=("Town?Scenario=Scenario_Hideout_Checkpoint_Security")
strMapList+=("Town?Scenario=Scenario_Hideout_Survival")
strMapList+=("Sinjar?Scenario=Scenario_Hillside_Checkpoint_Insurgents")
strMapList+=("Sinjar?Scenario=Scenario_Hillside_Checkpoint_Security")
strMapList+=("Sinjar?Scenario=Scenario_Hillside_Survival")
strMapList+=("Ministry?Scenario=Scenario_Ministry_Checkpoint_Insurgents")
strMapList+=("Ministry?Scenario=Scenario_Ministry_Checkpoint_Security")
strMapList+=("Compound?Scenario=Scenario_Outskirts_Checkpoint_Insurgents")
strMapList+=("Compound?Scenario=Scenario_Outskirts_Checkpoint_Security")
strMapList+=("Precinct?Scenario=Scenario_Precinct_Checkpoint_Insurgents")
strMapList+=("Precinct?Scenario=Scenario_Precinct_Checkpoint_Security")
strMapList+=("Precinct?Scenario=Scenario_Precinct_Survival")
strMapList+=("Oilfield?Scenario=Scenario_Refinery_Checkpoint_Insurgents")
strMapList+=("Oilfield?Scenario=Scenario_Refinery_Checkpoint_Security")
strMapList+=("Mountain?Scenario=Scenario_Summit_Checkpoint_Insurgents")
strMapList+=("Mountain?Scenario=Scenario_Summit_Checkpoint_Security")
strMapList+=("Mountain?Scenario=Scenario_Summit_Survival")
strMapList+=("PowerPlant?Scenario=Scenario_PowerPlant_Checkpoint_Insurgents")
strMapList+=("PowerPlant?Scenario=Scenario_PowerPlant_Checkpoint_Security")
strMapList+=("PowerPlant?Scenario=Scenario_PowerPlant_Survival")
strMapList+=("Buhriz?Scenario=Scenario_Tideway_Checkpoint_Insurgents")
strMapList+=("Buhriz?Scenario=Scenario_Tideway_Checkpoint_Security")
strMapList+=("Bab?Scenario=Scenario_Bab_Checkpoint_Insurgents")
strMapList+=("Bab?Scenario=Scenario_Bab_Checkpoint_Security")
strMapList+=("Citadel?Scenario=Scenario_Citadel_Checkpoint_Insurgents")
strMapList+=("Citadel?Scenario=Scenario_Citadel_Checkpoint_Security")
strMapList+=("Citadel?Scenario=Scenario_Citadel_Survival")

#Gamemode (Please pick the right gamemode for the right map and comment out the rest with hashtag)
#strGameMode="Firefight"
#strGameMode="Frontline"
#strGameMode="Occupy"
#strGameMode="Skirmish"
#strGameMode="CaptureTheBase"
#strGameMode="TeamDeathmatch"
#strGameMode="Filming"
#strGameMode="Mission"
strGameMode="Checkpoint"
#strGameMode="CheckpointHardcore"
#strGameMode="CheckpointTutorial"
#strGameMode="Operations"
#strGameMode="Outpost"
#strGameMode="Domination"

#Mutator list
#AllYouCanEat
#AntiMaterielRiflesOnly
#BoltActionsOnly
#Broke
#BulletSponge
#Competitive
#CompetitiveLoadouts
#FastMovement
#Frenzy
#Guerrillas
#Hardcore
#HeadshotOnly
#HotPotato
#LockedAim
#NoAim
#PistolsOnly
#ShotgunsOnly
#SlowCaptureTimes
#SlowMovement
#SoldierOfFortune
#SpecialOperations
#Strapped
#Ultralethal
#Vampirism
#Warlords

#Ruleset (Please pick one only and comment out the rest with hashtag. Some might not work)
#Using Ruleset will override some of your game.ini config. Expect some config not to work
#strRuleSet="CheckpointFrenzy"
#strRuleSet="CompetitiveFirefight"
#strRuleSet="CompetitiveTheater"
#strRuleSet="MatchmakingCasual"
strRuleSet="OfficialRules"

#set random seed
RANDOM=$$$(date +%N)

#set map
defaultmap=${strMapList[$RANDOM % ${#strMapList[@]}]}
port="27102"
queryport="27131"
listenport="27015"
servername="TESTSERVER"
defaultscenario="Scenario_Precinct_Checkpoint_Insurgents"
maxplayers="3"
startparameters="${defaultmap}?MaxPlayers=${maxplayers} -RconListenPort=${listenport} -Port=${port} -QueryPort=${queryport} -ruleset=${strRuleSet} -hostname=${servername} -log -MapCycle=mapcycle -GameStatsToken=2D279FA824DB48B79E5EBF0813E91ABE"
echo $startparameters
read -p "Carry on?"

if test "$#" -ne 1; then
    GAMEPATH=~/Steam/steamapps/common/sandstorm_server
  else
    GAMEPATH=~/sandstorm/serverfiles
fi

cd $GAMEPATH

Insurgency/Binaries/Linux/InsurgencyServer-Linux-Shipping $startparameters
