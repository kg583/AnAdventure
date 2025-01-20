# Module ticks
function aa:mechanics/end/tick
function aa:mechanics/nether/tick

# Remove drowned tridents
execute as @e[type=minecraft:drowned,nbt={HandItems:[{count:1,id:"minecraft:trident"}]}] run tp @s ~ -128 ~

# Ravagers & evoker fangs trample crops
execute as @e[type=minecraft:ravager] at @s run function aa:mechanics/misc/trample
execute as @e[type=minecraft:evoker_fangs] at @s positioned ~ ~1 ~ run function aa:mechanics/misc/trample
