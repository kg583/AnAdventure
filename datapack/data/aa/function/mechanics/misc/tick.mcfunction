# Remove drowned tridents
execute as @e[type=minecraft:drowned,nbt={HandItems:[{id:"minecraft:trident"}]}] run tp @s ~ -128 ~

# Ravagers & evoker fangs trample crops
execute as @e[type=minecraft:ravager] at @s run function aa:mechanics/misc/trample
execute as @e[type=minecraft:evoker_fangs] at @s positioned ~ ~1 ~ run function aa:mechanics/misc/trample

# Witches turn flowers saplings into dead bushes
execute as @e[type=minecraft:witch] at @s run function aa:mechanics/misc/dry_out

# Lightning makes fulgurites sometimes
execute as @e[type=minecraft:lightning_bolt] at @s positioned ~ ~-1 ~ run function aa:mechanics/misc/fulgurite

# Anvils aren't so expensive
execute as @a run function aa:mechanics/misc/repair_cost
