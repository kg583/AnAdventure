execute summon minecraft:marker run tag @s add aa.spawn.sky_phantoms
spreadplayers ~ ~ 0 50 true @e[type=minecraft:marker,tag=aa.spawn.sky_phantoms]
execute at @e[type=minecraft:marker,tag=aa.spawn.sky_phantoms] run summon minecraft:phantom ~ 350 ~
execute at @e[type=minecraft:marker,tag=aa.spawn.sky_phantoms] run summon minecraft:phantom ~-1 350 ~
execute at @e[type=minecraft:marker,tag=aa.spawn.sky_phantoms] run summon minecraft:phantom ~ 351 ~1
effect give @e[type=minecraft:phantom] minecraft:fire_resistance infinite
kill @e[type=minecraft:marker,tag=aa.spawn.sky_phantoms]
schedule function aa:spawn/sky_phantoms/cooldown 90s append
