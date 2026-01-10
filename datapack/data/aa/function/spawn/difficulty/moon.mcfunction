# Witch covens
execute if entity @s[type=minecraft:witch] run function aa:spawn/difficulty/coven

# Pet slimes
execute if entity @s[type=minecraft:skeleton] run summon minecraft:slime ~1 ~.6 ~-1 {Size:0,Tags:["aa.tiered"]}

# Bigger slimes
execute if entity @s[type=minecraft:slime] run data modify entity @s Size set value 4

# Weakness creepers
execute if entity @s[type=minecraft:creeper] run effect give @s minecraft:weakness infinite
