summon minecraft:marker ~ ~ ~ {Tags:["aa.spawn.sky_phantoms","smithed.entity","smithed.strict"]}
spreadplayers ~ ~ 0 50 true @e[type=minecraft:marker,tag=aa.spawn.sky_phantoms]
execute as @e[type=minecraft:marker,tag=aa.spawn.sky_phantoms] at @s run function aa:spawn/sky_phantoms/summon

schedule function aa:spawn/sky_phantoms/cooldown 90s append
