summon minecraft:marker ~ ~ ~ {Tags:["aa.spawn.end_city_endermites","smithed.entity","smithed.strict"]}
spreadplayers ~ ~ 0 30 true @e[tag=aa.spawn.end_city_endermites,type=minecraft:marker]
execute as @e[tag=aa.spawn.end_city_endermites,type=minecraft:marker] at @s run function aa:spawn/end_city_endermites/summon

schedule function aa:spawn/end_city_endermites/cooldown 10s append
