# Zombie jockeys
execute if entity @s[type=minecraft:zombie,predicate=!c:entity/is_baby] summon minecraft:zombie_horse run ride @n[type=minecraft:zombie,distance=..1] mount @s

execute if entity @s[type=minecraft:zombie,predicate=c:entity/is_baby] unless entity @e[type=minecraft:skeleton,distance=..16] summon minecraft:wolf run ride @n[type=minecraft:zombie,distance=..1] mount @s

execute if entity @s[type=minecraft:drowned] summon minecraft:dolphin run ride @n[type=minecraft:drowned,distance=..1] mount @s
execute if entity @s[type=minecraft:drowned,predicate=!c:entity/is_baby] run attribute @n[type=minecraft:dolphin,distance=..1] minecraft:scale base set 2

# Witch covens
execute if entity @s[type=minecraft:witch] run summon minecraft:witch ~1 ~.6 ~1
execute if entity @s[type=minecraft:witch] run summon minecraft:witch ~ ~.6 ~-1

# Pet slimes
execute if entity @s[type=minecraft:skeleton] run summon minecraft:slime ~1 ~.6 ~-1 {Size:0}

# Weakness creepers
execute if entity @s[type=minecraft:creeper] run effect give @s minecraft:weakness infinite
