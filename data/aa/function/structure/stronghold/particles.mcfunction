tp @s ~ ~ ~ facing ^0.1 ^ ^1

execute unless data storage aa:story beacon_spawn_pos run particle minecraft:enchant ~ ~ ~ 2 2 2 1 1
execute if data storage aa:story beacon_spawn_pos run particle minecraft:dragon_breath ~ ~ ~ 3 3 3 0.01 2
