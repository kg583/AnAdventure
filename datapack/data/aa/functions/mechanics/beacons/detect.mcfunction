execute if data storage aa:mechanics/beacons SpawnPos in minecraft:overworld run function aa:mechanics/skyfall with storage aa:mechanics/beacons SpawnPos
execute unless data storage aa:mechanics/beacons SpawnPos in minecraft:the_end run function aa:mechanics/end/enter

advancement revoke @s only aa:mechanics/beacons/detect
