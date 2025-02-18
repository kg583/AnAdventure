execute if data storage aa:story beacon_spawn_pos in minecraft:overworld run function aa:mechanics/skyfall with storage aa:story beacon_spawn_pos
execute unless data storage aa:story beacon_spawn_pos in minecraft:the_end run function aa:mechanics/end/enter

advancement revoke @s only aa:mechanics/beacon/respawn
