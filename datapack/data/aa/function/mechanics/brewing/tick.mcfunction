# Recipe injection
execute as @e[tag=aa.block.brewing_stand,type=minecraft:marker] at @s run function aa:mechanics/brewing/brewing_stand/tick

# Potion stacks
execute as @a run function aa:mechanics/brewing/potion_stacks
