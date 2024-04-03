execute summon minecraft:marker run tag @s add aa.spawn.end.phantom
spreadplayers ~ ~ 0 128 under 256 true @e[type=minecraft:marker,tag=aa.spawn.end.phantom]
scoreboard players set aa.spawn.end.phantom cooldown 2000
