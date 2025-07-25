execute summon minecraft:marker run tag @s add aa.current
execute as @e[type=minecraft:marker,tag=aa.current] run function aa:mechanics/brewing/_setup
