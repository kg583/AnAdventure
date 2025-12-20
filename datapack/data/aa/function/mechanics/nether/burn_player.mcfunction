summon minecraft:small_fireball ~ ~2.1 ~ {Tags:["aa.sparky","smithed.entity","smithed.strict"]}
execute as @e[type=minecraft:small_fireball,tag=aa.sparky] run data merge entity @s {Motion:[0.0d,-0.1d,0.0d]}
