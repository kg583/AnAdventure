function aa:util/coords
data modify storage aa:storage BeaconSpawnPos set from storage aa:io Pos

advancement revoke @s only aa:mechanics/beacons/activate_beacon_spawn
