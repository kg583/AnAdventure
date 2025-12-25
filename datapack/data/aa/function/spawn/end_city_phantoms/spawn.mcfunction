summon minecraft:marker ~ ~ ~ {Tags:["aa.spawn.end_city_phantoms","smithed.entity","smithed.strict"]}
spreadplayers ~ ~ 0 50 true @e[type=minecraft:marker,tag=aa.spawn.end_city_phantoms]
execute as @e[type=minecraft:marker,tag=aa.spawn.end_city_phantoms] at @s run function aa:spawn/end_city_phantoms/_spawn

schedule function aa:spawn/end_city_phantoms/cooldown 90s append
