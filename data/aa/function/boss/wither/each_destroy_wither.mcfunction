# Effects
particle minecraft:damage_indicator ~ ~ ~ 1 1 1 1 100 force
function aa:util/cull
data modify entity @s Health set value 0s

loot spawn ~ ~ ~ loot minecraft:blocks/wither_skeleton_skull
loot spawn ~ ~ ~ loot minecraft:blocks/wither_skeleton_skull
loot spawn ~ ~ ~ loot minecraft:blocks/wither_skeleton_skull

# Text
execute store result storage aa:io value int 1.0 run random value 1..5
function aa:boss/wither/destruction_text with storage aa:io
