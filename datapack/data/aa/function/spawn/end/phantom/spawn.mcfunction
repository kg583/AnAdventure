execute summon minecraft:marker run tag @s add aa.spawn.end.phantom
spreadplayers ~ ~ 0 50 true @e[type=minecraft:marker,tag=aa.spawn.end.phantom]
execute at @e[type=minecraft:marker,tag=aa.spawn.end.phantom] positioned ~ 150 ~ run summon minecraft:phantom
execute at @e[type=minecraft:marker,tag=aa.spawn.end.phantom] positioned ~-1 150 ~ run summon minecraft:phantom
execute at @e[type=minecraft:marker,tag=aa.spawn.end.phantom] positioned ~ 151 ~1 run summon minecraft:phantom
kill @e[type=minecraft:marker,tag=aa.spawn.end.phantom]
schedule function aa:spawn/end/phantom/_cooldown 60s append
