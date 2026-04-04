# Witches turn flowers & saplings into dead bushes
execute as @e[tag=!smithed.entity,type=minecraft:witch] at @s run function aa:mechanics/misc/dry_out

# Sniffers can only dig one kind of totem
execute as @e[tag=!smithed.entity,type=minecraft:sniffer] at @s run function aa:mechanics/misc/sniffer

# Iron golems are repaired by nearby smiths
execute as @e[tag=!smithed.entity,type=minecraft:iron_golem] at @s run function aa:mechanics/misc/heal_golem

# Outer end crystal beacons
execute as @e[tag=aa.end_spike,tag=!aa.oriented,type=minecraft:end_crystal] run function aa:mechanics/misc/end_spike
