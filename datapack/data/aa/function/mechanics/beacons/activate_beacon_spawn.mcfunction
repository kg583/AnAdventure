function aa:util/coords
data modify storage aa:story beacon_spawn_pos set from storage aa:io pos

advancement revoke @s only aa:mechanics/beacons/activate_beacon_spawn
