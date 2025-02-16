execute summon minecraft:marker run tag @s add aa.spawn.end_city_phantoms
spreadplayers ~ ~ 0 50 true @e[type=minecraft:marker,tag=aa.spawn.end_city_phantoms]
execute at @e[type=minecraft:marker,tag=aa.spawn.end_city_phantoms] run summon minecraft:phantom ~ 150 ~ {Size:6}
execute at @e[type=minecraft:marker,tag=aa.spawn.end_city_phantoms] run summon minecraft:phantom ~-1 150 ~ {Size:6}
execute at @e[type=minecraft:marker,tag=aa.spawn.end_city_phantoms] run summon minecraft:phantom ~ 151 ~1 {Size:6}
kill @e[type=minecraft:marker,tag=aa.spawn.end_city_phantoms]
schedule function aa:spawn/end_city_phantoms/cooldown 120s append
