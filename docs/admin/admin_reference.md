---
title: TT Admin Command Reference
---

# TT Admin Command Reference Sheet

|Name|Description|
|----|-----------|
|[TT Admin Roster](http://tiny.cc/TTadminroster)|In case of a melt down|| 
|[#ban-appeals Etiquette/Player Relations Principles](http://tiny.cc/TT-PR-ban-appeal)|We keep Squad lawyers on retainer to represent you in #ban-appeals.|
|[Server Rules](../rules/server_rules.md)|The Rules Bible| 
|[How to Use Admin Tools](./how_to_use_tt_admin_tools.md)|Roles bot, Discord, BattleMetrics and SquadJS| 
|[Admin Guidelines](./admin_guidelines.md)|Guidelines on admin roles and conduct| 
|[BattleMetrics](https://battlemetrics.com/)|RCON panel for the server|
|[PSG Hosting Panel](https://control.psg-hosting.com/)|Server control panel|

# SquadJS Interactions

The syntax to send commands through admin chat is: `![command] [playername] [reason]`

The [reason] must be more than one word unless you send a shortcut. 

`!warn playername unlock` will warn a player to unlock their squad with the “unlock” shortcut 

`!warn playername stop` will return an error message, because there is no “stop” shortcut

`!warn playername Stop locking your RWS squad, you must unlock` will successfully warn a player with the written message

Remove spaces in a playername to warn players with spaces. For a player named “Bravo Delta”, the interaction would be: `[command] BravoDelta [reason]`.  To kick “Bravo Delta” using a solo (solo’ing vehicle) shortcut, use `!kick BravoDelta solo`.

SquadJS will attempt to match incomplete player names. This means you may not have to type a full player name.  If we want to warn player Randy Newman with an SLkit shortcut, we can use `!warn randy SLkit`.  If SquadJS returns an error message, because there is another player named Randy Fuming, we can get more specific and use `!warn RandyNew SLkit`

# SquadJS Commands (all players)

|Command|Description|
|-------|-----------|
|!help |Self warns the player with the commands they can use, depending on which chat they issue the command in. Different options for admin chat|
|!discord|Self warns the player TT discord information|
|!whitelist|Self warns the player TT whitelist information|
|!admin|Send an admin ping in-game and to our #admin-ping Discord channel|
|!reset|Lets a player teamswitch themselves twice, essentially a glorified suicide. Fixes “running man” bug|
|!shownext|Self warns the player information about the next map, and which faction they will play|

# Console (~) admin commands

|Command|Description|Example|
|-------|-----------|-------|
|AdminRenameSquad <teamid> <squad id/number>|Reset a custom squad name to a default (Squad 5, Squad 9, etc)|AdminRenameSquad 1 4|
|AdminTeleportToPlayer <playername>|While in admin camera (Shift+P) teleport to a player. Server will try to guess incomplete names|AdminTeleportToPlayer Bob|

# Admin Commands (sent through admin chat)

|Command|Description|
|-------|-----------|
|!kill playername reason|Automatically teamswitches a player twice so that they return on their original team, but dead and not in a squad. Used if players are glitched and can’t use the respawn console command or as a light punishment when dealing with seeding issues. Reason is not required|
|!kick playername reason|Kicks player from server, reason required. No timeout, players can rejoin instantly|
|!yeet playername reason|Kicks player from server, reason required. Natural 5 minute re-join cooldown. Reason **REQUIRED**|
|!timeout playername reason|Kicks and bans a player from the server for 1 hour. When used this command prevents the player from accruing points on SCBL. A “timeout” for more minor infractions. |
|!unyeet|Wipes the ‘!timeout/!yeet’ command ban list|
|!randomize|(Use !randomizenext below) Randomizes the teams. Best use for this is after a map change, when people load into the server, but before too many squads are created. If you execute this mid-game, on average half the server will immediately die on the teamswap|
|!randomizenext|Updated version of !randomize. This command will automatically shuffle the teams after the map switch.|
|!vote option1 option2 [[option3] ...]|Initiates a 3 minute server wide vote. Used for map votes. Remember to set the next map in BattleMetrics after the vote is completed.  Example(s): <br/> `!vote belaya kamdesh kohat`<br/>  `!vote urban desert forest`|
|!endvote|Prematurely ends a vote in progress. End a vote early if you are cutting it close with the 3 minute map vote and the game’s end approaches|
|!runoff|Starts a runoff vote in the event of a tie in the vote. Works for both regular/standard votes(using `!vote`) and mappool votes(started by `!rtv`).|
|!fog [1/0]|This will reveal the flag sequence of a RAAS layer on the map for all players. Essentially turns a RAAS game into an AAS layer, but with different patterns. Announce fog off round before with admin consensus|
|!broadcast, !broad, !b Message|Sends a broadcast with whatever custom message is written|
|!disband [#]|Disbands the targeted squad of the executor’s team|
|!enemydisband [#]|Disbands the targeted squad of the executor’s opposing team|
|!shownext|Shows the next map, factions and subfactions.  Note: This is no longer an admin exclusive command|
|!w, !warn playername message|Send a written message to a player. This can be a shortcut listed below, or a custom sentence:<br/>`!w drewpro SLkit`<br/>`!warn drewpro Please grab an SL kit your next spawn`|
|!maps|Shows the last 6 maps, factions and end times. Retrieves match history from the squadjs database. Repeats 3 times|
|!tickets|Displays detailed information about the past 6 games, including layer, factions and ticket differential. Repeats 3 times||
|!switchnext playername|This command will automatically switch a player to the other team at the beginning of the next map| 
|!switchnow playername|Switches a player instantly from one team to another|
|!autofog {toggle,status,save} |!autofog toggle will turn off the fog on RAAS automagically. !autofog status will show you the current setting (should be off by default) !autofog save will save the status to JS. This is used to ensure the setting stays through SquadJS crashes, but will require it be turned off|
|!rotation {toggle,status,save}|!rotation toggle will turn on the server map rotation for Fogless Friday. !rotation status will show the current status. !rotation save will save the current status to JS and works the same as autofog. Saving it will require the setting be turned off to return to normal play|

# [Reason] Shortcuts

Instead of typing a reason/message in your !warn, !kick or !kill, you can type any of these shorthands. It will only work as a solo word, not in combo with anything. 

|Shortcut|Message|
|--------|-------|
|tk|teamkilling. Please review our rules on discord.io/trig |
|abandon|creating and abandoning a squad. Please review our rules on discord.io/trig|
|unlock|one man locked squad. Unlock your one man locked squad or join another squad. We don't allow one man locked squads unless for helo, logi or cmd|
|solo|soloing. Return to main NOW, you are soloing a 2 man crewman vehicle, this is against server rules, ...|
|slkit|not having an SL kit. Please pickup an Inf SL kit ASAP. Infantry squads must be actively led by inf SLs, not SLs in vehicles|
|base|base camping. Back off the enemy main base, you are too close and !w camping their main|
|spam|spamming. Please stop spamming chat or voice immediately. We focus on mature gameplay on this server, join our discord for out of game conversations|
|teamwork|lack of teamwork. Please communicate and coordinate with your teammates and fellow SLs. Teamwork is required on this server and will be enforced if necessary|
|appeal|raising admin issues in-game. Please bring all appeals and issues with admin action to discord and keep it out of in-game chat. We will gladly deal with it there and welcome constructive mature feedback|
|comms|lack of comms. All players must be able and willing to communicate in some way(voice or text). SLs must be responsive and communicate in SL channel|
|advertise|advertising. We do not allow advertising websites, streams or recruiting on our server. Please keep this off our server. Thank you|
|mess|messing around. Stop messing around and help your team. This is a mature teamwork server|
|waste|wasting assets. Please be more careful with your vehicles and make sure you are helping the team and not wasting assets|
|pilotsl|SLing as a pilot. Pilot led squads can not contain more than 3 total squad members|
|hab|attacking the enemy HAB or main when seeding. Keep the fight to the dictated flag and not pushing enemy spawns|
|ramming|intentional helicopter ramming. This is prohibited on the TT server|
|troll|your behavior is detracting from the quality of the game. Tone it down or you will be removed|
|trolling|your behavior is detracting from the quality of the game. Tone it down or you will be removed|
|crewsl|The majority of your squad is infantry. You cannot lead as a crewman in a vic. Pass Gunner/driver to another and get an infantry SL|
|baiting|creating and abandoning a squad. Please review our rules on discord.io/trig|
|sexism|excessive sexism. Sexism is not allowed on the serverthank|
|homophobia|excessively homophobic remarks. That level of language is not allowed on the server|
|toxic|toxicity, take a step back and calm down. Please review our rules on discord.io/trig|
|toxicity|toxicity, take a step back and calm down. Please review our rules on discord.io/trig|
|newsl|losing your SL. Please figure out who would like to lead the squad. Don't pass it randomly|
|hacking/cheating|Cheating. Player has been removed for using third party assistance|

# Pre-made broadcasts (typed into admin chat)

|Shortcut|Message|
|--------|-------|
|!slkit|Squads containing a majority of infantry roles must be led by an infantry SL kit|
|!music|Please do not spam music in comms - this is considered mic spamming and can result in admin action against you|
|!spam|Please do not spam in comms - this can result in admin action against you|
|!seeding|Displays a pre-formatted seeding message broadcast|
|!live|Displays a pre-formatted live message broadcast
|!discord|Broadcast the TT discord information to the server|
|!whitelist|Broadcast the TT whitelist information to the server|
|!allchat|Displays a pre-formatted message telling all chat to stop|
|!advertise|We do not allow advertising websites, streams or recruiting on our server. Please keep this off our server. Thank you|
|!appeal|Please bring all arguments, appeals and issues with admin action to discord and keep it out of in-game chat. We will gladly deal with it there and welcome constructive mature feedback. discord.io/trig|
|!teamwork|Communicate and coordinate with your teammates and fellow SLs. Teamwork is required on this server and will be enforced if necessary|
|!balance|We will be balancing the teams at the beginning of the next round to fix balance issues. We take server balance seriously at TT|
|!comms|All players must be able and willing to communicate in some way(voice or text). SLs must be responsive and communicate in the SL channel|
|!solo|Do not solo vehicles that require a crewman kit. Never leave main without a gunner. If you find yourself soloing, return to the main base|
|!ramming|Intentionally ramming enemy helicopters is prohibited|
|!teamkilling|Apologize for ALL TK's in ALL CHAT or action will be taken|
|!report|Please report any troublemaker or rule breaker with !admin Their name and details of what’s happening. This will allow the admins to deal with them|
|!feedback|Please post constructive feedback and concerns about the TT server and any issues you have had @ discord.gg/TACTRIG|
|!baiting|Creating a squad to pass SL off to someone else is against the rules. This is considered squad baiting/seeding and can result in removal|
|!language|Do not use bigoted language on this server. More info @ discord.gg/TACTRIG|
|!sl|SLs must actively lead their squads and work with the team. They should primarily have a SL kit and actively communicate. Squads without proper SLs may be disbanded|

# Custom Map Vote Plugin

OWI’s voting allows blueberries to choose wildly unbalanced matchups, degrading players’ experiences. To combat this, TT implemented an overhauled voting system that uses javascript commands. Here’s how it works and how to use it.

## What’s under the hood

Each sub-faction is assigned a “strength score” based on its characteristics e.g., number of heavily armored vehicles. Similarly-scored (and theoretically balanced) sub-factions are matched with each other and listed in a spreadsheet, here.

TT admins can use a series of javascript commands to pull a list of three balanced match ups from the spreadsheet, creating a pool of layer options, and then command the server to run a vote on this pool, and set the winner as the next layer.

## How to run a vote

No one likes repetition: start with the command `!maps` to review what layers have been played recently.Then, generate a pool of voting options with `!genpool`. 

To see what the current pool is, run `!pool`. Not happy with the options? Use `!genpool` again, or use `!reroll` if you want to run the same parameters that was run last. This command will preserve the filters you had previously added to `!genpool` (more on that below)

`!rockthevote` will open the polls: the server will run a vote using the pool’s layers and then automatically set the winner.

## How to use filters

Admins can add filters to the `!genpool` command to customize the layer pool. 

|Filter Text|Effect|
|-----------|------|
|small, medium, large|Select layers on maps of a certain size|
|symm, sym, symmetrical|Only allow mirror matches (e.g. TLF Light Inf. vs USA Light Inf.) as options in the generated pool|
|aas, raas, invasion, insurgency, tc|Define the game mode in the pool. Currently, only AAS and RAAS are supported|
|Any map name e.g. basra, fallujah, gorodok|Select the maps that should be in the pool. These can be strung together to define the voting options e.g. `!genpool basra fallujah gorodok`.  Common abbreviations and misspellings may be accepted|
|new|Filters layers with the newest released subfactions, provided they are updated in the config.  These are WPMC - CombinedArms, LightInfantry and AirAssault as of patch 8.2|

To use these filters, simply add additional text to the command, separated by spaces. For example:

|Example command|Effect|
|---------------|------|
|!genpool medium|The pool’s maps will be a mixture of matchups and game modes, but only medium-sized maps will be added to this pool|
|!genpool medium gorodok|This pool will consist of a Gorodok option and two medium options: map filters are prioritized by the plugin|
|!genpool gorodok fallujah basra |The pool’s maps will consist of a Gorodok option, a Fallujah option, and an Al Basra option|
|!genpool gorodok fallujah basra aas|The same as above, but every option in the pool will be AAS|
|!genpool gorodok fallujah basra aas sym|The same as above, but with mirror matchups only (e.g. a light infantry sub-faction vs. another light infantry sub-faction.)|

# List of commands



|Command|Effect|
|-------|------|
|!pool|View the generated pool of layers|
|!genpool|Generates a pool of maps using the TT approved map list|
|!reroll|Regenerate the layer pool using the same filters used in the previous !genpool, saving you time|
|!reroll <1, 2, 3>|Rerolls the mappool with the previous parameters, *AND* rerolls the option with given indexes. For example, !reroll 2 3 would run the pool generation with the previous commands *and* reroll the 2nd and 3rd pick in the pool|
|!rockthevote OR !rtv|Run the vote using the generated pool|
|!setnext <1, 2, 3>|Sets next map to whatever index indicated in the parameter (1, 2, or 3)|
|!runoff|Starts a runoff vote in the event of a tie in the vote. Works for both regular/standard votes(using !vote) and mappool votes(started by !rtv)|
|!setwinner|Sets the next map to the winner of the vote. . Currently mostly redundant, since this is set to happen automatically, but is kept as a redundancy/fallback option should the automation of it be turned off in the future|


# Set a layer (without a vote)

Even if it’s the depths of gremlin hours, you can use this system to generate and set particular layers.

If it's too late in the round to run a map vote—or you are in gremlin hours—use the command !setpool <1, 2, or 3> to set the next layer from the generated map pool. Each number refers to the index of the generated map pool.

