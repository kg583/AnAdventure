execute summon minecraft:marker run tag @s add aa.monument

fill ~-1 ~-1 ~-1 ~ ~ ~ minecraft:water replace minecraft:gold_block
execute align xyz positioned ~ ~ ~ summon minecraft:trident run tag @s add aa.trident
data modify entity @n[type=minecraft:trident,tag=aa.trident,distance=..2] pickup set value 1b
