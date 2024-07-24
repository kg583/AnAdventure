execute if data storage aa:mechanics/beacons SpawnPos in minecraft:overworld run function aa:mechanics/skyfall with storage aa:mechanics/beacons SpawnPos
execute unless data storage aa:mechanics/beacons SpawnPos in minecraft:the_end run function aa:mechanics/end/enter_end

advancement revoke @s only aa:mechanics/beacons/respawn_with_beacon
