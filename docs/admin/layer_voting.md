---
title: Layer Voting
---
# Layer Voting Server Config & Commands

General Overview

Faction Unit and Layer Voting is an opt-in system that allows your communities to vote for the next faction and layer they wish to play. 



When a match of Squad concludes the Scoreboard will appear and afterwards players on each team will be provided a selection to vote for the layer and then the faction they wish to play. 



With the addition of the voting system, factions have been broken down now into units that have their own specialities. Currently these specialties are represented by having a unique lineup of vehicles and FOB emplacements. In the future, this may be expanded to include unique weapons, roles, and commander abilities. These different units can show up in the voting options when voting for which team to play. Unit types currently represented are combined arms (these are similar to how factions were set up before voting), air assault, armored, light infantry, mechanized, motorized, support, and amphibious assault. 



With the addition of the voting system, the amount of gameplay layers has been consolidated now that new layers are no longer required for different factions match-ups (down from 453 to 203). Additional unique layers will be introduced in future updates. 



The full list of units, layers, and which units can be played on what layer can be found below.

Faction Unit and Map Layer Sheet Reference

Public-Facing Unit Templates - 7.2



The Layer Voting System allows Server Owners to:

Configure the number of layers and factions to be voted on (2 to 6). The default is 6.

Configure the time given to vote for layers  (20 to 90 seconds). The default is 90 seconds.

Configure the time given to vote for factions and units (20 to 60 seconds). The default is 60 seconds.

Configure how many rounds before the same game mode, map, layer, factions, and units can be available to be voted on again.

Server Owners can also set two different pools of layers that will be available for voting:

One for low-population server conditions (Ideal for Seeding and Skirmish)

Server Owners will be able to set what they consider “low population” using a LowPlayerCountThreshold.cfg

One for normal, fully-populated server conditions

Server Owners will be able to blacklist certain factions or units from the layers using their layer pool. 



🔵 Blacklisting can be done either through ExcludedFactions.cfg file globally or for specific layers in the respective voting config files.





Layer voting is optional but there are changes to note.

There will be a notable decrease in layers to choose from with the voting system from 453 to 203 currently. This is due to duplicate layers using different factions being removed. Layers were cut to consolidate Main Base locations in fewer locations on a given map and to accommodate all possible vehicle spawns needed for a faction.

To alleviate this problem, Server Owners will be given more flexibility when setting a static layer rotation.

Notable Console Commands

AdminChangeLayer - Change the layer and travel to it immediately, no vote will occur.

AdminSetNextLayer - Sets the next layer to travel to after this match ends, no vote will occur.

AdminSetNextLevel - Sets the next layer to travel to this map after this match ends, no vote will occur.

AdminClearNextLayer - Clears the selection of the next layer (ONLY WHEN LAYER VOTING IS ENABLED - SEE “SERVER CONFIGURATION”)



AdminChangeLayer and AdminSetNextLayer were adjusted to a new layer structure. These accept faction IDs as parameters



Example Below: Set a new layer to Anvil_AAS_v1 with factions BAF vs INS.

AdminSetNextLayer Anvil_AAS_v1 BAF INS

Example Below: Set a new layer to Anvil_AAS_v1 with factions BAF Motorized Unit vs INS.

AdminSetNextLayer Anvil_AAS_v1 BAF+Motorized INS

⚠️ If any layer or level is set using AdminSetNextLayer while Layer Voting is enabled, the voting stage at the end of a match WILL NOT start and the server will be moved to the next selected layer, instead. The new command AdminClearNextLayer can be used to reset any selected upcoming layer/level, and re-enable Layer Voting for the next layer.



Server Configuration

To ENABLE the Layer Voting system on your server, you will need to change the Map Rotation Mode in your Server.cfg file by changing the MapRotationMode entry to LayerList_Vote (example below). 

MapRotationMode=LayerList_Vote

To define possible voting options, there are 4 additional files Server Owners will need to be aware of

LayerVoting.cfg - Used for listing layers, as well as factions that can be voted on during layer votes.

LayerVotingLowPlayers.cfg - Used when server player count is below the value set for LowPlayerCountThreshold in VoteConfig.cfg (see next point). This file can be deleted if only one mode is desired (Please be aware that updating the server using the validate option may restore the file).

LayerVotingNight.cfg - Used on selected timeframe configured in VoteConfig.cfg

VoteConfig.cfg - Used for general layer voting configuration, as well as when to switch between using LayerVoting.cfg and LayerVotingLowPlayers.cfg. 

These configuration files will be loaded and used as a source for picking voting options based on the number of players on the server. These are covered below.

LayerVoting.cfg is ideally used for listing layers you’d like to be played during NORMAL or FULL  server populations, such as AAS / RAAS, and Invasion layers.

LayerVotingLowPlayers.cfg is ideally used for listing layers you’d like to be played during LOW server populations, such as Seeding and Skirmish layers.

The default Map Rotation Mode for a freshly installed server will be set to Layer Voting.

⚠️ The structure of both Layer config files is the same, containing a SINGLE layer entry per line.



Layer_Name|Exclude_Options_Team1|Exclude_Options_Team2

A few examples of Layer entries and relevant parameters to put in LayerVoting.cfg and LayerVotingLowPlayers.cfg:

Example

Effect

Anvil_AAS_v1

Uses the Anvil_AAS_v1 layer with all faction and unit possibilities.

Anvil_Invasion_v1|BAF

EXCLUDE the BAF faction from the voting pool for BOTH TEAMS.

Anvil_Invasion_v1|BAF|

Second pipe character “|” at the end. EXCLUDE the BAF faction for TEAM 1. Exclude nothing for TEAM 2.

Anvil_Invasion_v1||BAF

Two pipe characters “||” at the beginning. Exclude nothing for TEAM 1. EXCLUDE the BAF faction for TEAM 2.

Anvil_RAAS_v1|BAF+Motorized

EXCLUDE Motorized unit from BAF faction for BOTH TEAMS.

Anvil_RAAS_v2|+Motorize

ALL Motorized units from all possible factions will be EXCLUDED for BOTH TEAMS.

Anvil_Skirmish_v1|BAF|USA

BAF faction will be EXCLUDED from TEAM 1 and USA will be EXCLUDED from TEAM 2.

Anvil_Skirmish_v1|BAF INF|USA

BAF and INF will be EXCLUDED for TEAM 1 and USA will be EXCLUDED for TEAM 2.





General Rules for Voting Layer Parameters

If you write the name of the Faction it will be EXCLUDED

If you write the Faction Name + Unit type. The specific unit will be EXCLUDED 

If you write +Unit type, all units of this type will be EXCLUDED 

If only the first parameter is defined it will apply to BOTH teams

Faction Units Parameter and Details

Below is a sheet that contains what each Faction Unit entails for every faction include what preset emplacements and vehicles will be available and what biomes they can be played on.

Public-Facing Unit Templates - 7.2

Additional Configuration Notes

If LayerVotingLowPlayers.cfg is EMPTY only LayerVoting.cfg will be used.

The first layer to load on the server is defined in VoteConfig.cfg, if it is empty, the first line from LayerVoting.cfg will be used.

Global Exclusion

Squad already features this system and has been modified to work with the Layer Voting System below are the notable files we want to highlight.

ExcludedLevels.cfg - contains info about maps that should be EXCLUDED during any type of rotation (nothing changed)

ExcludedLayers.cfg - contains information on layers to be EXCLUDED during any time of rotation. (nothing changed)

ExcludedFactions.cfg - contains info about factions, units, and specific faction setups. While defining rules in this file the General Rules for Layer Parameters are applied.

ExcludedFactionSetups.cfg - This file has been Removed with the Layer Voting System. 

Layer Voting Flow Setting

All additional settings related to Layer Voting are stored in VoteConfig.cfg. The default VoteConfig.cfg file generated on fresh server installation is shown below:.



// When using Level Vote, this value lets you control how many layers will be picked from your rotation and offered in each layer vote. Possible values from 2 to 6. (Default is 6)

LayerOptionsNumber=6



// Duration of voting phase for next layer

LayerVoteDuration=90

// Duration of voting phase for each faction/team

TeamVote_Duration=60

// How many options will be presented on team/faction selection screen during voting. Possible values from 2 to 6. (Default is 6)

TeamVoteOptionsNumber=6



// If the number of players at the end of the match is less than this number then the next voting round uses a special pool that can have seeding or skirmish layers. Defined in LayerVotingLowPlayers.cfg.

LowPlayerCountThreshold=30



// Special rules to delay duplicated options in next match voting. In case when there is not enough options to present configured number of options, the options with the shortest delay can be picked.

// Delay for last played map

MapSkipRounds=1



// Delay for last played biome

MapBiomeSkipRounds=0



// Delay for last played layer size

LayerSizeSkipRounds=0



// // Delay for last played game mode with an option to set different delays per each game mode

GameModeSkipRounds=AAS 0, RAAS 0, Invasion 0, Seed 0, Skirmish 0, TerritoryControl 0, Insurgency 0, Destruction 0, TrackAttack 0



// Delay for last played layer

LayerSkipRounds=1



// Delay for last played faction

FactionSkipRounds=1



// Delay for last played specific faction unit

FactionSetupSkipRounds=1



// If true, there is an option to regenerate the map list. If it gets the most votes, the list is regenerated. The option is available only once.

CanRegenerateLayerList=true



// If true, there is an option to regenerate the faction list. If it gets the most votes, the list is regenerated. The option is available only once.

CanRegenerateFactionList=true



// If false, player vote count won't be displayed during voting.

DisplayVotes=true



// If true, will display enemy info with details during voting process

DisplayEnemyInfo=true



// All unit types presented for second team will be the same as first team choice

SymmetricalMatchUp=false



// Set how many choices of selected game mode should be presented on layer voting screen. 0 is unlimited

// If sum of options exceeds LayerOptionsNumber first defined game modes will have priority

GameModeChoices=AAS 0, RAAS 0, Invasion 0, Seed 0, Skirmish 0, TerritoryControl 0, Insurgency 0, Destruction 0



// Only unique maps with random gamemode will be displayed during map voting phase

UniqueMap=true



// After voting for layer, factions will be auto-selected according to other configured rules

AutoSelectFactions=false



// Define time when server should use night time config ex. 18:00-04:00 

// During those hours voting will use config defined in LayerVotingNight.cfg

// LayerVotingLowPlayers has priority over this. So in situation when server // will be in night mode but the players count will go below 

// LowPlayerCountThershold, the low players config will be used.

// Time is based on server system time

NightTime=



// The first layer to start with in voting mode. This layer will be loaded as default each time the server starts.

FirstLayer=





Changes in 8.0:

New options: UniqueMap, AutoSelectFactions, GameModeChoices





Changes in 7.3:

New options MapBiomeSkipRounds, LayerSizeSkipRounds, SymmetricalMatchUp, NightTime

GameModeSkipRounds, can define delay for each game mode 

Certain skip options can interfere with each other. For example, having GameModeSkipRounds set to 1 on every single game mode and LayerSkipRounds set to 2 will result in the LayerSkipRounds overwriting everything and skipping game modes for the next 2 voting phases. 





Other Rotation Modes

The only change is for LayerRotation.cfg and LevelRotation.cfg. The number of possible layers has been reduced so if there are still some records for removed layers in your configuration files they will be EXCLUDED. There are two new ways for Server Owners to define a list of layers:

Anvil_AAS_v1

This will load the Anvil_AAS_v1 layer with a predefined factions setup.

Anvil_AAS_v1 USA RDF

This will change the factions used on the selected layer. The new faction for Team 1 will be USA and for Team 2 RDF. Right now there are rules that prevent specific setups for layers covered below.

You can’t play against the same faction

You can’t play against a faction in the same alliance (REDFOR/BLUFOR), the EXCEPTION for this is the independent factions. 

🔵 If the configuration you’ve used is INVALID, it will try to fix itself by changing the SECOND team to a valid faction.



Faction Alliance Reference

REDFOR

Russian Airborne Forces - VDV

Russian Ground Forces - RDF

BLUFOR

Australian Defence Force - ADF

British Armed Forces - BFA

Canadian Armed Forces - CAF

United States Army - USA

United States Marine Corps - USMC

PAC (Pan-Asian Coalition)

People’s Liberation Army  - PLA

PLA Navy Marine Corps - PLANMC

People’s Liberation Army Amphibious Ground Forces - PLAAGF

INDEPENDENT

Middle Eastern Alliance - MEA

Turkish Land Forces - TLF

Insurgents - INS

Irregular Militia Forces - IMF

Known Issues

Layer Voting is a work-in-progress system. We want Server Owners to know and to keep this and a few things in mind when testing the feature.

Players/Admins are able to swap teams during the map (layer)/Unit voting but don’t test this functionality as it’s being reworked.

Non-regular layers will not have proper preview information for the voting screen as these are not made for gameplay. Examples are Training, JensensRange, and training variants of PacificProvingGrounds. These layers are excluded from voting rotations by default.

AdminRestartMatch and AdminSlomo during or before the voting phase will cause issues with the timer and voting flow display order

Voting timers will display the wrong value if the client time is not in sync with the server time.

Vehicle and player spawns could be misplaced, causing spawns to be clipping, and vehicles being damaged or fly away

If you encounter this, PLEASE REPORT the specific layer and vehicle type

The deployment tutorial can overlay and block voting.

Layer specific issues

Gorodok Destruction v1 - US Tank not spawning

Harju - Invasion v2 + RAAS v1 - There is no Repair Station available for boats in the Main Base.

Gorodok Invasion v1 - Multiple vehicles flipping when spawned.

Al Basrah AAS v1 - Team 1 delayed tank spawn will cause the tank to fly up and flip

Fallujah - TC v1 - MBT spawners for both teams aren't working

JensensRange layers are not compatible with the voting system, setting them up for voting can lock up the voting flow. Please use AdminRestartMatch to escape the locked state.



ALL OF THIS IS SUBJECT TO CHANGE


