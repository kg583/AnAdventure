execute summon minecraft:spider run tag @s add aa.spiderling
execute summon minecraft:spider run tag @s add aa.spiderling
execute summon minecraft:spider run tag @s add aa.spiderling
execute summon minecraft:spider run tag @s add aa.spiderling

execute as @e[tag=aa.spiderling] run function aa:spawn/tiers/1/_spiderlings

tp @n[tag=aa.spiderling,distance=..2] ~0.1 ~ ~
tp @s ~ ~-128 ~
