# Witch covens
execute if entity @s[type=minecraft:witch] run summon minecraft:witch ~1 ~.6 ~1
execute if entity @s[type=minecraft:witch] run summon minecraft:witch ~ ~.6 ~-1

# Pet slimes
execute if entity @s[type=minecraft:skeleton] run summon minecraft:slime ~1 ~.6 ~-1 {Size:0,Tags:["aa.tiered"]}

# Bigger slimes
execute if entity @s[type=minecraft:slime] run data modify entity @s Size set value 4

# Weakness creepers
execute if entity @s[type=minecraft:creeper] run effect give @s minecraft:weakness infinite
