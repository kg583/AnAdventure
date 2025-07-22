execute summon lingering_potion run data modify entity @s Item set from entity @n[type=minecraft:arrow,distance=..2] item
data merge entity @n[type=minecraft:lingering_potion,distance=..2] {Silent:1b}
data remove entity @s item
tag @s add aa.lingered
