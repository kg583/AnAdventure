scoreboard players set .count local 0

execute if entity @s[type=minecraft:villager] run function aa:story/names/name_villager
execute if entity @s[type=minecraft:wandering_trader] run function aa:story/names/name_trader
