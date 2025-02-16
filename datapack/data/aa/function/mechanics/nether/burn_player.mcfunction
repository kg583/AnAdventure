execute positioned ~ ~2.1 ~ summon minecraft:small_fireball run tag @s add aa.sparky
execute as @e[type=minecraft:small_fireball,tag=aa.sparky] run data merge entity @s {Motion:[0.0d,-0.1d,0.0d]}
