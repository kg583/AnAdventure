# Recipe injection
execute as @e[type=minecraft:marker,tag=aa.block.brewing_stand] at @s run function aa:mechanics/brewing/process

# Potion stacks
execute as @a run function aa:mechanics/brewing/potion_stacks
