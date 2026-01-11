scoreboard players set #count aa.local 0

execute if entity @s[type=minecraft:villager] run function aa:mechanics/names/name_villager
execute if entity @s[type=minecraft:wandering_trader] run function aa:mechanics/names/name_trader
execute if entity @s[type=minecraft:zombie_villager,predicate=c:entity/persistent] run function aa:mechanics/names/name_villager
