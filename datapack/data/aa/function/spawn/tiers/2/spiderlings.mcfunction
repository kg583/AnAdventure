execute summon minecraft:spider run tag @s add aa.spiderling
execute summon minecraft:spider run tag @s add aa.spiderling
execute summon minecraft:spider run tag @s add aa.spiderling
execute summon minecraft:spider run tag @s add aa.spiderling
execute summon minecraft:spider run tag @s add aa.spiderling

execute as @e[type=minecraft:spider,tag=aa.spiderling] run function aa:spawn/tiers/2/_spiderlings

tp @n[type=minecraft:spider,tag=aa.spiderling,distance=..2] ~0.1 ~ ~
tp @s ~ ~-128 ~
