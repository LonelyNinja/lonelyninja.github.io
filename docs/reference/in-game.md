---
title: In-Game
---

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


