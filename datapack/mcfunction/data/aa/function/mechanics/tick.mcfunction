# Module ticks
function aa:mechanics/nether/tick

# Remove drowned tridents
execute as @e[type=minecraft:drowned,nbt={HandItems:[{count:1,id:"minecraft:trident"}]}] run tp @s ~ -128 ~
