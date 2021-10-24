#! /bin/bash

strMapList=()
strMapList+=("Crossing?Scenario=Scenario_Crossing_Checkpoint_Insurgents")
strMapList+=("Crossing?Scenario=Scenario_Crossing_Checkpoint_Security")
strMapList+=("Farmhouse?Scenario=Scenario_Farmhouse_Checkpoint_Insurgents")
strMapList+=("Farmhouse?Scenario=Scenario_Farmhouse_Checkpoint_Security")
strMapList+=("Farmhouse?Scenario=Scenario_Farmhouse_Survival")
strMapList+=("Hideout?Scenario=Scenario_Hideout_Checkpoint_Insurgents")
strMapList+=("Hideout?Scenario=Scenario_Hideout_Checkpoint_Security")
strMapList+=("Hideout?Scenario=Scenario_Hideout_Survival")
strMapList+=("Hillside?Scenario=Scenario_Hillside_Checkpoint_Insurgents")
strMapList+=("Hillside?Scenario=Scenario_Hillside_Checkpoint_Security")
strMapList+=("Hillside?Scenario=Scenario_Hillside_Survival")
strMapList+=("Ministry?Scenario=Scenario_Ministry_Checkpoint_Insurgents")
strMapList+=("Ministry?Scenario=Scenario_Ministry_Checkpoint_Security")
strMapList+=("Outskirts?Scenario=Scenario_Outskirts_Checkpoint_Insurgents")
strMapList+=("Outskirts?Scenario=Scenario_Outskirts_Checkpoint_Security")
strMapList+=("Precinct?Scenario=Scenario_Precinct_Checkpoint_Insurgents")
strMapList+=("Precinct?Scenario=Scenario_Precinct_Checkpoint_Security")
strMapList+=("Precinct?Scenario=Scenario_Precinct_Survival")
strMapList+=("Refinery?Scenario=Scenario_Refinery_Checkpoint_Insurgents")
strMapList+=("Refinery?Scenario=Scenario_Refinery_Checkpoint_Security")
strMapList+=("Summit?Scenario=Scenario_Summit_Checkpoint_Insurgents")
strMapList+=("Summit?Scenario=Scenario_Summit_Checkpoint_Security")
strMapList+=("Summit?Scenario=Scenario_Summit_Survival")
strMapList+=("PowerPlant?Scenario=Scenario_PowerPlant_Checkpoint_Insurgents")
strMapList+=("PowerPlant?Scenario=Scenario_PowerPlant_Checkpoint_Security")
strMapList+=("PowerPlant?Scenario=Scenario_PowerPlant_Survival")
strMapList+=("Tideway?Scenario=Scenario_Tideway_Checkpoint_Insurgents")
strMapList+=("Tideway?Scenario=Scenario_Tideway_Checkpoint_Security")
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
#strRuleSet="OfficialRules"

#set random seed
RANDOM=$$$(date +%N)

#set map
defaultmap=${strMapList[$RANDOM % ${#strMapList[@]}]}
port="27102"
queryport="27131"
servername="Test server (unreliable, may disconnect)"
defaultmap="Precinct"
defaultscenario="Scenario_Precinct_Checkpoint_Insurgents"
maxplayers="3"
startparameters="${defaultmap}?MaxPlayers=${maxplayers} -Port=${port} -QueryPort=${queryport} -hostname='${servername}' -log -MapCycle=mapcycle -GameStatsToken=2D279FA824DB48B79E5EBF0813E91ABE"
echo $startparameters
echo $strMap
#Insurgency/Binaries/Linux/InsurgencyServer-Linux-Shipping $startparameters
#./serverfiles/Insurgency/Binaries/Linux/InsurgencyServer-Linux-Shipping $strMap?port=27102?queryport=27131?MaxPlayers=4?game=$strGameMode -LogCmds="LogGameplayEvents Log" -log -AdminList=Admins -MapCycle=mapcycle -GameStats -GSLTToken=BD9BD60BF2E4A401E1D929100B6176BB -hostname='Test server, unreliable (may disconnect)' 
#Insurgency/Binaries/Linux/InsurgencyServer-Linux-Shipping Oilfield?Scenario=Scenario_Refinery_Push_Security?MaxPlayers=3 -Port=27102 -QueryPort=27131 -log -hostname="Test server (unreliable, may disconnect)"
