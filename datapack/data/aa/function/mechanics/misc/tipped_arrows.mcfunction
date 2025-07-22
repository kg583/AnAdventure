# TODO: Summon area_effect_cloud directly to remove sound
execute summon lingering_potion run data modify entity @s Item set from entity @n[type=minecraft:arrow,distance=..2] item
data remove entity @s item
tag @s add aa.lingered
