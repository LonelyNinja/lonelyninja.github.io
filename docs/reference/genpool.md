---
title: Genpool
---

Prior to the existcence of [Squad Layer Manager (SLM)](../guides/squad_layer_manager.md), we used the `genpool` command for managing maps and votes.  This is here in case we ever have to revert to it in the event of an SLM failure.

!!! Warning
    Don't use this unless necessary. Use SLM. SLM will override these settings anyway.

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
|!reroll <1, 2, 3>|Rerolls the map pool with the previous parameters, *AND* rerolls the option with given indexes. For example, `!reroll 2 3` would run the pool generation with the previous commands *and* reroll the 2nd and 3rd pick in the pool|
|!rockthevote OR !rtv|Run the vote using the generated pool|
|!setnext <1, 2, 3>|Sets next map to whatever index indicated in the parameter (1, 2, or 3)|
|!runoff|Starts a runoff vote in the event of a tie in the vote. Works for both regular/standard votes(using `!vote`) and mappool votes(started by `!rtv`)|
|!setwinner|Sets the next map to the winner of the vote. Currently mostly redundant, since this is set to happen automatically, but is kept as a redundancy/fallback option should the automation of it be turned off in the future|


# Set a layer (without a vote)

Even if it’s the depths of gremlin hours, you can use this system to generate and set particular layers.

If it's too late in the round to run a map vote—or you are in gremlin hours—use the command `!setpool <1, 2, or 3>` to set the next layer from the generated map pool. Each number refers to the index of the generated map pool.
