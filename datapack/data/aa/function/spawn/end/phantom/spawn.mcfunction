execute summon minecraft:marker run tag @s add aa.spawn.end.phantom
spreadplayers ~ ~ 0 50 true @e[tag=aa.spawn.end.phantom]
execute at @e[tag=aa.spawn.end.phantom] run summon minecraft:phantom ~ 150 ~ {Size:6}
execute at @e[tag=aa.spawn.end.phantom] run summon minecraft:phantom ~-1 150 ~ {Size:6}
execute at @e[tag=aa.spawn.end.phantom] run summon minecraft:phantom ~ 151 ~1 {Size:6}
kill @e[tag=aa.spawn.end.phantom]
schedule function aa:spawn/end/phantom/cooldown 120s append
