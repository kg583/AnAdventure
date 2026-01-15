# Witches turn flowers & saplings into dead bushes
execute as @e[tag=!smithed.entity,type=minecraft:witch] at @s run function aa:mechanics/misc/dry_out

# Sniffers can only dig one kind of totem
execute as @e[tag=!smithed.entity,type=minecraft:sniffer] at @s run function aa:mechanics/misc/sniffer

schedule function aa:mechanics/misc/5t 5t replace
