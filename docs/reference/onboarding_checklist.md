---
title: Admin-Lite Onboarding
---

!!! note

    From LonelyNinja: We need to change this to update the whitelist procedure to `/whitelist add|remove|show` on Discord

# Admin-Lite Onboarding Checklist

This checklist has been designed to be completed in order. 

- <input type="checkbox" /> Add information to the roster ([Admin Roster 2.0](https://docs.google.com/spreadsheets/d/1E9sNXuz5dKnurTKuMM9iAG1WODAKzoZbjn4nen8ZlUw/edit#gid=0))
- <input type="checkbox" /> Onboarder (HQ) only! Update flags in battlemetrics and update discord permissions
    - <input type="checkbox" /> Contact CMD with lite’s email for google drive
- <input type="checkbox" /> Onboardee (new Lite) only! Direct message the TTRolesBot “!admin {YOURSTEAMID}”.  As with whitelist, the server will give you your new powers after the next map roll. http://tt-roles.tacticaltriggernometry.com/profile
- <input type="checkbox" /> Onboardee (new Lite), open the email from battlemetrics and accept the invitation to the battlemetrics organization. 
- <input type="checkbox" /> View and consider the [TT Admin Info/Policies](../policies/all_admins.md)
- <input type="checkbox" /> View and consider the [Admin Lite Info/Policies](../policies/admin_lite.md)
- <input type="checkbox" /> Talk about expectations in reference to the two prior reviewed documents:
    - <input type="checkbox" /> Player versus administrator responsibilities
    - <input type="checkbox" /> General responsibilities
    - <input type="checkbox" /> Professionalism
- <input type="checkbox" /> Review of the [Tactical Triggernometry Squad Server Rules](../server/server_rules.md)
- <input type="checkbox" /> Learn to use your new tools
    - [Admin Reference Sheet](./command_reference.md)
    - [Rules Enforcement](../guides/rules_enforcement.md)
    - Admin Cam: `Left Shift + P`
- <input type="checkbox" /> Helpful Resources:
    - https://squadmaps.com/
    - The current layers map (Find [here](../index.md))
- <input type="checkbox" /> Test your new tools before you get out there
    - <input type="checkbox" /> Warn your onboarder	
    - <input type="checkbox" /> Kick your onboarder (use “admin onboarding test” as kick reason)
    - <input type="checkbox" /> Examine what a ban process looks like

Go have fun! Congrats!


# TTRolesBot

Once you are given an admin role in discord the first step is to get your steamid linked with the server so that it recognizes you as an admin. This will give you abilities to use in-game console commands and give you a reserved spot. This is the same system used to link patrons to their reserved spots. The bot is fully automated and self updates the server, any steamid changes should be active on the server next map change, there is a possibility it will take a couple of hours, any longer that and reach out for tech support/confirm steps.

Steps: 

1. Send the @TTRolesbot the message `!admin STEAMIDHERE` after giving the user the Admin Lite discord role. This command allows you to check current steam ids attached to your user by sending “!whitelist” alone or add new steam ids by sending !whitelist and including a list of steam ids after it.<br/>
![](./images/ttrolesbot3.png)
1. Find your steam id here https://steamid.io/, we need your steam64, nothing else will work.
1. To set up your solo steamid as an admin use the following, `!whitelist <your steamid here>`.  
1. It should send back a confirmation that looks like this. <br/>
![](./images/ttrolesbot1.png)
1. If you have a patreon subscription and are entitled secondary reserved spts for steam ids, list them after your steam id in the same message. It should look like this `!whitelist <your steamid>, <friend’s steamid>`.  
1. The bot again will send back a confirmation, it is VERY important that the admin sends their steamid first, as that is the one that will receive the powers.<br/>
![](./images/ttrolesbot2.png)





