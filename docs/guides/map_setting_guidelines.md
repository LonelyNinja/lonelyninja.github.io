---
title: Map Setting Guidelines
---

# Using SLM

As of January 2025, admins can use [`Squad Layer Manager`](./squad_layer_manager.md) to create curated rotations.  Refer there to learn how to create a queue.

# Recommended Post-Seed Maps

Post-seed, the server population could be as little as 65 or as high as 98.  Adjust accordingly.  
- If the server isn't full, don't pick a huge map
- Try not to pick a polarizing map immediately after seed

Recommended:
- Kokan
- Narva
- Gorodok

# General Rotation Guidance

Try not to set Belaya, Narva, Fallujah, Gorodok back-to-back.  Get some variety in there.

# Recommended Late Night Maps / Layers

After 12AM EST, stick to ***safe*** maps to help maintain server population. We strongly recommend you stick to R/AAS layers past 12am. The time for experimentation is during prime-time hours (roughly 4PM-11PM EST). Here is a list of maps we consider safe:

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

Other good common sense is not to do Narva/Mutaha/Falluja back-to-back.  Mix it up some, even late at night.


# Special Rotations

TT's only curretn special rotation is `Fogless Friday`.  Don't change the lineup on Fogless Friday.  Just relax and have some fun.


# If SLM Isn't Working

Flax has kindly fixed the TTAutoRotation plugin for us, and added some new functionality! From now on we can use the following SquadJS commands to turn on/off fogless mode and the autorotation. The commands work as follows:

* `!rotation {toggle | status | save}`
* `!autofog {toggle | status | save}`

To enable or disable either the rotation in friday_rotation.txt or the autofogless mode, use `!rotation toggle` or `!autoset toggle`.

To see the current status of these modes, use !rotation status or !autofog status.

The current status of either switch is saved to the config.json file using !rotation save or !autoset save. Using this "save" command will allow the toggles set above to persist through SquadJS restarts. This is ideal for ensuring the mode is enabled at the beginning of the day, or disabled at the end.

Because we have access to these commands, manually altering the `config.json` is no longer necessary. However, the `friday_rotation.txt` will still have to be manually updated. The good part is now the rotation txt can be loaded in ahead of time and activated or deactivated by any admin.
