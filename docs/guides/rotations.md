---
title: Creating Layer Rotations
---


Flax has kindly fixed the TTAutoRotation plugin for us, and added some new functionality! From now on we can use the following SquadJS commands to turn on/off fogless mode and the autorotation. The commands work as follows:

!rotation {toggle | status | save}
!autofog {toggle | status | save}

To enable or disable either the rotation in friday_rotation.txt or the autofogless mode, use !rotation toggle or !autoset toggle.

To see the current status of these modes, use !rotation status or !autofog status.

The current status of either switch is saved to the config.json file using !rotation save or !autoset save. Using this "save" command will allow the toggles set above to persist through SquadJS restarts. This is ideal for ensuring the mode is enabled at the beginning of the day, or disabled at the end.

Because we have access to these commands, manually altering the config.json is no longer necessary. However, the friday_rotation.txt will still have to be manually updated. The good part is now the rotation txt can be loaded in ahead of time and activated or deactivated by any admin.