execute if data storage aa:story beacon_spawn_pos in minecraft:overworld run function aa:story/skyfall with storage aa:story beacon_spawn_pos
execute unless data storage aa:story beacon_spawn_pos in minecraft:the_end run function aa:story/end/enter

advancement revoke @s only aa:story/beacon/respawn
