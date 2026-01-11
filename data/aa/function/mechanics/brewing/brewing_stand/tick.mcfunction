# Process recipes
execute unless block ~ ~ ~ minecraft:brewing_stand run return run kill @s
#execute if block ~ ~ ~ minecraft:brewing_stand{BrewTime:400s} if data block ~ ~ ~ Items[0] run function aa:mechanics/brewing/start
#execute if block ~ ~ ~ minecraft:brewing_stand{BrewTime:1s} if data block ~ ~ ~ Items[0] run function aa:mechanics/brewing/end

# Potion stacking
execute if items block ~ ~ ~ container.0 #c:potions/bottle run item modify block ~ ~ ~ container.0 aa:mechanics/brewing/potion_stacks
execute if items block ~ ~ ~ container.1 #c:potions/bottle run item modify block ~ ~ ~ container.1 aa:mechanics/brewing/potion_stacks
execute if items block ~ ~ ~ container.2 #c:potions/bottle run item modify block ~ ~ ~ container.2 aa:mechanics/brewing/potion_stacks
