summon minecraft:marker ~ ~ ~ {Tags:["aa.spawn.end_city_phantoms","smithed.entity","smithed.strict"]}
spreadplayers ~ ~ 0 50 true @e[tag=aa.spawn.end_city_phantoms,type=minecraft:marker]
execute as @e[tag=aa.spawn.end_city_phantoms,type=minecraft:marker] at @s run function aa:spawn/end_city_phantoms/summon

schedule function aa:spawn/end_city_phantoms/cooldown 90s append
