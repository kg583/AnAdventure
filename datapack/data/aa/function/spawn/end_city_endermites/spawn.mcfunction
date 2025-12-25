summon minecraft:marker ~ ~ ~ {Tags:["aa.spawn.end_city_endermites","smithed.entity","smithed.strict"]}
spreadplayers ~ ~ 0 30 true @e[type=minecraft:marker,tag=aa.spawn.end_city_endermites]
execute as @e[type=minecraft:marker,tag=aa.spawn.end_city_endermites] at @s run function aa:spawn/end_city_endermites/_spawn

schedule function aa:spawn/end_city_endermites/cooldown 10s append
