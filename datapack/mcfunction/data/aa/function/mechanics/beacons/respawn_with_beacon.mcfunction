execute if data storage aa:storage BeaconSpawnPos in minecraft:overworld run function aa:mechanics/skyfall with storage aa:storage BeaconSpawnPos
execute unless data storage aa:storage BeaconSpawnPos in minecraft:the_end run function aa:mechanics/end/enter_end

advancement revoke @s only aa:mechanics/beacons/respawn_with_beacon
