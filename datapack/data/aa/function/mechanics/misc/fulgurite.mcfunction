# Random chance
execute store result score .fulgurite aa.rand run random value 1..4
execute unless score .fulgurite aa.rand matches 1 run return fail

# Sand
data modify storage aa:io list set value ["minecraft:gray_stained_glass","minecraft:obsidian","minecraft:coal_block","minecraft:magma_block"]

execute positioned ~ ~ ~ if block ~ ~ ~ minecraft:sand run function aa:mechanics/misc/_fulgurite {weights:[40,60,80,100]}
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:sand run function aa:mechanics/misc/_fulgurite {weights:[40,60,80,100]}
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:sand run function aa:mechanics/misc/_fulgurite {weights:[30,50,70,80]}
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:sand run function aa:mechanics/misc/_fulgurite {weights:[35,60,80,100]}
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:sand run function aa:mechanics/misc/_fulgurite {weights:[30,50,70,80]}
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:sand run function aa:mechanics/misc/_fulgurite {weights:[35,60,80,100]}
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:sand run function aa:mechanics/misc/_fulgurite {weights:[30,50,70,80]}
execute positioned ~ ~ ~2 if block ~ ~ ~ minecraft:sand run function aa:mechanics/misc/_fulgurite {weights:[30,50,70,75]}
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:sand run function aa:mechanics/misc/_fulgurite {weights:[30,50,70,80]}

execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:sand run function aa:mechanics/misc/_fulgurite {weights:[40,70,100,100]}
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:sand run function aa:mechanics/misc/_fulgurite {weights:[35,65,100,100]}
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:sand run function aa:mechanics/misc/_fulgurite {weights:[35,70,90,90]}
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:sand run function aa:mechanics/misc/_fulgurite {weights:[40,70,100,100]}
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:sand run function aa:mechanics/misc/_fulgurite {weights:[30,60,80,80]}
execute positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:sand run function aa:mechanics/misc/_fulgurite {weights:[35,70,100,100]}
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:sand run function aa:mechanics/misc/_fulgurite {weights:[30,60,80,80]}
execute positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:sand run function aa:mechanics/misc/_fulgurite {weights:[40,70,100,100]}

# Red sand
data modify storage aa:io list[0] set value "minecraft:orange_stained_glass"

execute positioned ~ ~ ~ if block ~ ~ ~ minecraft:red_sand run function aa:mechanics/misc/_fulgurite {weights:[40,60,80,100]}
execute positioned ~-1 ~ ~ if block ~ ~ ~ minecraft:red_sand run function aa:mechanics/misc/_fulgurite {weights:[40,60,80,100]}
execute positioned ~-2 ~ ~ if block ~ ~ ~ minecraft:red_sand run function aa:mechanics/misc/_fulgurite {weights:[30,50,70,75]}
execute positioned ~-1 ~ ~-1 if block ~ ~ ~ minecraft:red_sand run function aa:mechanics/misc/_fulgurite {weights:[30,50,70,80]}
execute positioned ~ ~ ~-1 if block ~ ~ ~ minecraft:red_sand run function aa:mechanics/misc/_fulgurite {weights:[35,60,80,100]}
execute positioned ~1 ~ ~-1 if block ~ ~ ~ minecraft:red_sand run function aa:mechanics/misc/_fulgurite {weights:[30,50,70,80]}
execute positioned ~1 ~ ~ if block ~ ~ ~ minecraft:red_sand run function aa:mechanics/misc/_fulgurite {weights:[35,60,80,100]}
execute positioned ~1 ~ ~1 if block ~ ~ ~ minecraft:red_sand run function aa:mechanics/misc/_fulgurite {weights:[30,50,70,80]}
execute positioned ~ ~ ~1 if block ~ ~ ~ minecraft:red_sand run function aa:mechanics/misc/_fulgurite {weights:[40,60,80,100]}

execute positioned ~ ~-1 ~ if block ~ ~ ~ minecraft:red_sand run function aa:mechanics/misc/_fulgurite {weights:[35,65,100,100]}
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ minecraft:red_sand run function aa:mechanics/misc/_fulgurite {weights:[35,70,100,100]}
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ minecraft:red_sand run function aa:mechanics/misc/_fulgurite {weights:[30,60,80,80]}
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ minecraft:red_sand run function aa:mechanics/misc/_fulgurite {weights:[40,70,100,100]}
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ minecraft:red_sand run function aa:mechanics/misc/_fulgurite {weights:[30,60,80,80]}
execute positioned ~1 ~-1 ~ if block ~ ~ ~ minecraft:red_sand run function aa:mechanics/misc/_fulgurite {weights:[35,70,100,100]}
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ minecraft:red_sand run function aa:mechanics/misc/_fulgurite {weights:[30,60,80,80]}
execute positioned ~ ~-1 ~1 if block ~ ~ ~ minecraft:red_sand run function aa:mechanics/misc/_fulgurite {weights:[40,70,100,100]}
