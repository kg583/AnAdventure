# Effects
particle minecraft:damage_indicator ~ ~ ~ 1 1 1 1 100 force
function aa:util/cull
data modify entity @s Health set value 0s

loot spawn ~ ~ ~ loot minecraft:blocks/wither_skeleton_skull
loot spawn ~ ~ ~ loot minecraft:blocks/wither_skeleton_skull
loot spawn ~ ~ ~ loot minecraft:blocks/wither_skeleton_skull

# Text
data merge storage aa:io {max:5,key:"text.aa.invalid_wither.overworld",text:{color:"dark_red",italic:true},targets:"@a[distance=..64]"}
execute if dimension minecraft:the_nether run data modify storage aa:io key set value "text.aa.invalid_wither.nether"

function aa:util/random/text with storage aa:io
function aa:util/tellraw with storage aa:io
