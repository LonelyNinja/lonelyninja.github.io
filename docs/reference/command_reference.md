---
title: Admin Command Reference
---

# Intro: SquadJS

SquadJS is a program that runs in the background of Squad and is linked to our Discord. It reads through and monitors Squad’s game logs, using these logs to automatically perform actions (seeding messages, server name and auto afk kick), create easy to read chat logs on discord that include TKs and admin broadcast(BM doesn’t track either), send !admin pings to a special discord channel, gives live server status updates, and allows ingame administration using the ChatToAdmin chat with specific commands.

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
|!afkout|Calling it a night? Consider helping the server go one more. Delay your disconnect until staging ends, or AFK out. The bot will get ya.
|!autofog {toggle,status,save} |`!autofog toggle` will turn off the fog on RAAS automagically. `!autofog status` will show you the current setting (should be off by default) `!autofog save` will save the status to JS. This is used to ensure the setting stays through SquadJS crashes, but will require it be turned off|
|!broadcast, !broad, !b Message|Sends a broadcast with whatever custom message is written|
|!disband [#]|Disbands the targeted squad of the executor’s team|
|!endvote|Prematurely ends a vote in progress. End a vote early if you are cutting it close with the 3 minute map vote and the game’s end approaches|
|!enemydisband [#]|Disbands the targeted squad of the executor’s opposing team|
|!fog [1/0]|This will reveal the flag sequence of a RAAS layer on the map for all players. Essentially turns a RAAS game into an AAS layer, but with different patterns. Announce fog off round before with admin consensus|
|!kill playername reason|Automatically teamswitches a player twice so that they return on their original team, but dead and not in a squad. Used if players are glitched and can’t use the respawn console command or as a light punishment when dealing with seeding issues. Reason is not required|
|!kick playername reason|Kicks player from server, reason required. No timeout, players can rejoin instantly|
|!main|[!base copy]: No base camping. Failure to respond to admin warnings to back off an enemy main base can result in removal.|
|!maps|Shows the last 6 maps, factions and end times. Retrieves match history from the squadjs database. Repeats 3 times|
|!newpilot|New pilots. Live games on TT are not for your first flight hours. Lack of adequate experience can get you grounded. Join us on the range to practice.|
|!pad|Do not block the heli pads. Keep the pads clear so assets can spawn and everyone can practice.|
|!randomize|(Use `!randomizenext` below) Randomizes the teams. Best use for this is after a map change, when people load into the server, but before too many squads are created. If you execute this mid-game, on average half the server will immediately die on the teamswap|
|!randomizenext|Updated version of `!randomize`. This command will automatically shuffle the teams after the map switch.|
|!runoff|Starts a runoff vote in the event of a tie in the vote. Works for both regular/standard votes(using `!vote`) and mappool votes(started by `!rtv`).|
|!rotation {toggle,status,save}|`!rotation toggle` will turn on the server map rotation for Fogless Friday. `!rotation status` will show the current status. `!rotation save` will save the current status to JS and works the same as autofog. Saving it will require the setting be turned off to return to normal play|
|!shownext|Shows the next map, factions and subfactions.  Note: This is no longer an admin exclusive command|
|!switchnext playername|This command will automatically switch a player to the other team at the beginning of the next map| 
|!switchnow playername|Switches a player instantly from one team to another|
|!tickets|Displays detailed information about the past 6 games, including layer, factions and ticket differential. Repeats 3 times||
|!timeout playername reason|Kicks and bans a player from the server for 1 hour. When used this command prevents the player from accruing points on SCBL. A “timeout” for more minor infractions. |
|!unyeet|Wipes the `!timeout/!yeet` command ban list|
|!vote option1 option2 [[option3] ...]|Initiates a 3 minute server wide vote. Used for map votes. Remember to set the next map in BattleMetrics after the vote is completed.  Example(s): <br/> `!vote belaya kamdesh kohat`<br/>  `!vote urban desert forest`|
|!w, !warn playername message|Send a written message to a player. This can be a shortcut listed below, or a custom sentence:<br/>`!w drewpro SLkit`<br/>`!warn drewpro Please grab an SL kit your next spawn`|
|!yeet playername reason|Kicks player from server, reason required. Natural 5 minute re-join cooldown. Reason **REQUIRED**|

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

# Server Admin Console Commands

!!! warning 

    KEEP USE OF THESE MINIMAL. ONLY USE THESE IF THE OTHER SERVICES GO DOWN OR DON’T WORK

See [Gamepedia's Reference for Server Administration Commands](https://squad.gamepedia.com/Server_Administration#Admin_Console_Commands)
 
