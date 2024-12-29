---
title: Map Voting
---

# Guidelines for Map Votes

> You want to make people swallow spinach? Vegetables before DESSERT
> 
> -- Randy Newman, 2022

Admins are encouraged to set maps and start map votes. Map decisions are agreed upon through admin chat. See the Admin Reference Sheet for instructions on how to initiate a map vote.  These guidelines are non-exhaustive:

Avoid repeating recently played maps. Use the `!maps` command or check the `#maps-played` channel for a list of recent maps.

Discuss options with all other admins and allow time for replies. Do not surprise admins with a “sneak set” or surprise vote. Utilize an `!admin` ping to alert other admins when a map discussion takes place.

Admins are responsible for compromise. Use reason, strike deals, negotiate, and compromise. “We can set your pick now, but then we can run this vote next” or “we haven’t played a helicopter layer recently. Can we do a full monty vote?”

We need a variety of maps and layers to keep the gameplay fresh on the server. Account for the previous maps, game mode, size, terrain, and assets.  A wide array of player preferences require admins to consider maps with the entire server in mind. 

Avoid last minute map scrambles. We can comfortably figure out map and vote choices in the first fifteen minutes of a game.

Game mode votes, map size votes, or specific layer votes are acceptable methods to select the next map. Sequential votes (e.g. first vote map size, second vote map) are encouraged when time permits.

You can find the layer information spreadsheet pinned in the #admin-bulletin Discord channel. Further information can be found at https://squadmaps.com/ and https://squadlanes.com/

## Recommended Late Night Maps / Layers

After 12AM EST, stick to “safe” maps to help maintain server population. We strongly recommend you stick to R/AAS layers past 12am. The time for experimentation is during prime-time hours (roughly 4PM-11PM EST). Here is a list of maps we consider safe:

* Yehorivka (RAAS v1, v3; AAS v1)
* Narva (any AAS or  RAAS v1)
* Gorodok (RAAS v1, v2, v5, v4 small)
* Sumari (AAS v1; RAAS v1)s
* Goose Bay (AAS v1; v2 RAAS v1)
* Kokan (AAS v1, RAAS v1, v2)
* Chora (AAS v1; RAAS v1, v2)
* Mutaha (AAS v1, v2, RAAS v1)
* Fallujah (AAS v1, v2; RAAS v1, v2, v3)
* Black Coast (AAS v1; RAAS v1, v3, v4)
* Harju (AAS v1, AAS v2 inf; RAAS v1, v2, v6)


# SquadJS

See the [Admin Reference Sheet](./command_reference.md) for more concise instructions on how to use SquadJS, a list of commands, and how to use our map voting features.

SquadJS is a program that runs in the background of Squad and is linked to our discord. It reads through and monitors Squad’s game logs, using these logs to automatically perform actions (seeding messages, server name and auto afk kick), create easy to read chat logs on discord that include TKs and admin broadcast(BM doesn’t track either), send !admin pings to a special discord channel, gives live server status updates, and allows ingame administration using the ChatToAdmin chat with specific commands.


## Basic (lame) Voting

We have the ability to run custom votes through admin chat using `!vote option1 option2 option3 ...`. The vote will last for 3 minutes (currently) and automatically end after or end with the use of `!endvote`. Votes can be registered in any type of chat by typing the option number. Votes can only be set or ended in admin chat. At the end of the vote, the overall winner will be broadcast to the server along with all vote tallies. This does not set any map and the options can be anything.

## Custom Map Vote Plugin

OWI’s voting allows blueberries to choose wildly unbalanced matchups, degrading players’ experiences. To combat this, TT implemented an overhauled voting system that uses javascript commands. Here’s how it works and how to use it.

Under the hood, each sub-faction is assigned a “strength score” based on its characteristics e.g., number of heavily armored vehicles. Similarly-scored (and theoretically balanced) sub-factions are matched with each other and listed in a spreadsheet, here.

TT admins can use a series of javascript commands to:
* Pull a list of three balanced match ups from the spreadsheet,
* Create a pool of layer options
* Command the server to run a vote on this pool
* Set the winner as the next layer.

## How to run a vote

No one likes repetition: start with the command `!maps` to review what layers have been played recently.  Then, generate a pool of voting options with `!genpool`. To see what the current pool is, run `!pool`. Not happy with the options? Use `!reroll`. This command will preserve the filters you had previously added to !genpool (more on that below.)

`!rockthevote` will open the polls.  The server will run a vote using the pool’s layers and then automatically set the winner.


Discord “server chat” channel commands(won’t work ingame)

!seeding

Same thing as in-game command, except it can be issued from discord

!live

Same thing as in-game command, except it can be issued from discord

!broadcast

Same thing as in-game command, except it can be issued from discord

!players

List of every playername, of everyone on the server


