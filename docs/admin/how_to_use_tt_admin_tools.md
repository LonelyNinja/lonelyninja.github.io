---
title: TT Admin Guide
--- 

# TT Admin Guide

Welcome to the TT Admin team in either the full HQ or lite admin role, most of the below applies to both roles with HQ having slightly higher permissions and abilities. This document will cover:
* the basic mechanics and how to’s of getting your admin permissions
* how we use discord and its setup
* how to get your out-of-game admin set up on battlemetrics(BM)
* how to use BM
* how to use SquadJS
* how to use basic admin console commands in game

This guide should cover at least 80% of what you need to know, but in the end nothing beats hands-on learning and one on one assistance. Once you have read over this guide and attempted basic levels of troubleshooting yourself, please reach out and ask for assistance with anything that you don’t understand, isn’t working, not covered or was overlooked by this guide. 


Admin server permissions and Reserved spot:

## TTRolesBot

Once you are given an admin role in discord the first step is to get your steamid linked with the server so that it recognizes you as an admin. This will give you abilities to use in-game console commands and give you a reserved spot. This is the same system used to link patrons to their reserved spots. The bot is fully automated and self updates the server, any steamid changes should be active on the server next map change, there is a possibility it will take a couple of hours, any longer that and reach out for tech support/confirm steps.

Steps: 

* Send the @TTRolesbot the message“!admin STEAMIDHERE” after giving the user the Admin Lite discord role. This command allows you to check current steam ids attached to your user by sending “!whitelist” alone or add new steam ids by sending !whitelist and including a list of steam ids after it.
* Find your steam id here https://steamid.io/, we need your steam64, nothing else will work.
* To set up your solo steamid as an admin use the following, `!whitelist “your steamid here`.  It should send back a confirmation that looks like this. 
* If you have a patreon subscription and are entitled secondary reserved spts for steam ids, list them after your steam id in the same message. It should look like this `!whitelist <your steamid>, <friend’s steamid>`.  The bot again will send back a confirmation, it is VERY important that the admin sends their steamid first, as that is the one that will receive the powers.

## Discord

Discord is massively important to us as a community for interaction, out-of-game talking, and dealing with any issues. As an admin, you will gain access to private channels that we use to discuss player issues, server issues, and anything else that could hinder or bolster our community. Because of this it is **SUPER** important for admins of all types to remain active in the administration section of discord. You can mute or ignore the general public channels as you wish, but you should do your best to pay attention and keep up to date on the things happening in the administration channels. There are also the shared space channels of Contact HQ and Jail and Courthouse.

Discord abilities: As a member of the admin team you will have higher discord permissions and the abilities to:
* give/take roles of those below you
* delete messages 
* move people in voice channels 
* kick/ban players from the server.

These abilities should be reserved in use until you have a better understanding of things and on a need to do basis. Reach out for guidance in this topic.

`Contact HQ` is a channel for the public to post any issues they are having on the server whether it is other players, server performance, or general feedback. Attempt to help where you can; if it's out of your lane, wait for someone else or get a member of `@relations`, `@SDS` or `@Command` as required.

`Jail and Courthouse` is a channel for the public to post ban appeals or further dig into admin actions against them. This can be a dangerous channel as it's the number one hot bed for drama. `@relations` are the experts and managers of this channel, and should be sought if any other than the most basic issues arise. Keep additional comments and conversations out of the J&C.  Only a single admin or relations team member should engage.  Use our private `problem players` channel to communicate your thoughts. J&C etiquette can be found [here](http://tiny.cc/TTJ-CEtiquette).

The remaining channels to worry about are all internal to HQ and are relatively self explanatory in use. They are structured to organise and spread out conversations to keep things focused. 

The `server chat` channel has the same chat as seen in BM, except it includes TKs and admin broadcasts.



## BattleMetrics

Battlemetrics(BM) is the out of game, web based program we use to do 90% of our administration on the server. It is a very broad-functioning program that has a lot of data and abilities available, mostly related to poking around and learning where stuff is and how to use it. To start using it and get linked up with the TT server, the first step is setting up a personal account and messaging the BM lead or another member of command the email used to register the BM account.

### BM Registration

* Try to avoid using steam login and make an account with an email you have access to. It doesn’t ask for anymore personal info and people have had issues with steam login.
* Verify your email after making the account by going to profile settings and sending verification email.
* Confirm verification through your email.

### BM Invite

Once that is done, you will need to send your email to the BM lead or a member of command so that they can invite you. You will receive an email invite to the TacTrig organisation and our servers.  By clicking on the link in the email you will be sent to BM to finish your account setup.  From the BM homescreen you should have access to the home dashboard by clicking on the RCON tab.  The home dashboard for TT admins should look like the below image [todo - image]. If it doesn’t or you aren’t able to successfully get to that point please reach out to the BM lead for troubleshooting assistance.

### BM Functions

Through the dashboard you can see the full options for each server by clicking on its name. You will be directed to the Player/chat main page.

Player/chat main page
> This is the default page where you can access the BM’s basic admin functionality and where you will spend 90% of your time. It's primarily made up of the chat/BM admin logs, list of player, server commands drop down and player commands drop down. 

Server commands drop down
> The menu across the top has drop down options that allow you to change the map, set the next map, show squads aWDSSnd many other less/not to be used commands.

Squad list 
> shows squads from both teams in a long scrolling pop up. Here you can check squad names, if they are locked, disband entire squads or remove individuals. You can exit this popup by clicking off to the side.

Player commands drop down
> By clicking on the drop down arrow beside each player’s name, a menu appears with specific player admin commands to be used on that player(If you want to ban, use add ban not add squad ban), you can also click on their name and go to their BM profile

BM player profile 
> Each player has a BM profile page that is accessed through the drop down menu or clicking on their names. It has a link to their steam profile, total playtime on the server, all chat logs from that player, all admin actions against that player and much more info on that player. It also includes notes that can be attached to the profile and shared across all TT admin.

Add Ban
> When adding a ban, it is important to understand our structure of approximate ban lengths for certain offences and to clearly state in the ban reason what rule was being broken, or what led to the ban being issued. No one other than relations has the capability to add bans over 30 days, if someone is deserving of a longer ban simply post in problem payers their name, what happened and why they need an increased ban length. Relations will add the ban.
> 
> When inputting the ban, you only need to change the preset times from the drop down and replace “INSERT REASON HERE” with what the ban is for. Leave the rest of the templated line alone and you can see what the player will see below in the preview space. Add notes if you feel the situation requires it.


## SquadJS

See the [Admin Reference Sheet](./command_reference.md) for more concise instructions on how to use SquadJS, a list of commands, and how to use our map voting features.

SquadJS is a program that runs in the background of Squad and is linked to our discord. It reads through and monitors Squad’s game logs, using these logs to automatically perform actions (seeding messages, server name and auto afk kick), create easy to read chat logs on discord that include TKs and admin broadcast(BM doesn’t track either), send !admin pings to a special discord channel, gives live server status updates, and allows ingame administration using the ChatToAdmin chat with specific commands.

### Server Status & Seeding

In the server seeding channel, there is an auto updated message that shows the server  pop, current map and next map. This message is persistent and doesn’t need interaction to function. You can also find the server pop by looking at the tt-SquadJS Bot or typing !server in any channel (this message doesn’t update)

The server has set population, time and map parameters that automatically put it in seeding mode. This sends out seeding reminders ingame for all players, and posts a seeding message in discord. The channel auto clears itself when the server is live. Admins are still able to post in the channel to call for seeders and give any server updates.

The seeder role was(and still is) assigned manually by HQ, we now have a bot that will assign the role to anyone that responds to the seeding emoji on the first post. They can unreact to remove the role if they wish. We need to advertise this function as much as possible and have people sign up for the role that are able to help

### Basic (lame) Voting

We have the ability to run custom votes through admin chat using `!vote option1 option2 option3 ...`. The vote will last for 3 minutes (currently) and automatically end after or end with the use of `!endvote`. Votes can be registered in any type of chat by typing the option number. Votes can only be set or ended in admin chat. At the end of the vote, the overall winner will be broadcast to the server along with all vote tallies. This does not set any map and the options can be anything.

### Custom Map Vote Plugin

OWI’s voting allows blueberries to choose wildly unbalanced matchups, degrading players’ experiences. To combat this, TT implemented an overhauled voting system that uses javascript commands. Here’s how it works and how to use it.

Under the hood, each sub-faction is assigned a “strength score” based on its characteristics e.g., number of heavily armored vehicles. Similarly-scored (and theoretically balanced) sub-factions are matched with each other and listed in a spreadsheet, here.

TT admins can use a series of javascript commands to:
* Pull a list of three balanced match ups from the spreadsheet,
* Create a pool of layer options
* Command the server to run a vote on this pool
* Set the winner as the next layer.

### How to run a vote

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















Server console commands:

—----------KEEP USE OF THESE MINIMAL. ONLY USE THESE IF THE OTHER SERVICES GO DOWN OR DON’T WORK

https://squad.gamepedia.com/Server_Administration#Admin_Console_Commands 










