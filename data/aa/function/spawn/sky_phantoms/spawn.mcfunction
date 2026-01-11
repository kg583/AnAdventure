summon minecraft:marker ~ ~ ~ {Tags:["aa.spawn.sky_phantoms","smithed.entity","smithed.strict"]}
spreadplayers ~ ~ 0 50 true @e[tag=aa.spawn.sky_phantoms,type=minecraft:marker]
execute as @e[tag=aa.spawn.sky_phantoms,type=minecraft:marker] at @s run function aa:spawn/sky_phantoms/summon

schedule function aa:spawn/sky_phantoms/cooldown 90s append
