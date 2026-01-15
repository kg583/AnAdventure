# Witches turn flowers & saplings into dead bushes
execute as @e[tag=!smithed.entity,type=minecraft:witch] at @s run function aa:mechanics/misc/dry_out

# Lightning makes fulgurites sometimes
execute as @e[tag=!smithed.entity,type=minecraft:lightning_bolt] at @s positioned ~ ~-1 ~ run function aa:mechanics/misc/fulgurite

# Tipped arrows spawn area effect clouds
execute as @e[tag=!smithed.entity,predicate=c:entity/in_ground,type=minecraft:arrow] if data entity @s item.components."minecraft:potion_contents" at @s run function aa:mechanics/misc/tipped_arrows

# Iron golems are repaired by nearby smiths
execute as @e[tag=!smithed.entity,type=minecraft:iron_golem] at @s run function aa:mechanics/misc/heal_golem

# Important items are invulnerable
execute as @e[tag=!smithed.entity,type=minecraft:item] run function aa:mechanics/misc/invulnerable

# Sniffers can only dig one kind of totem
execute as @e[type=minecraft:sniffer] unless score @s aa.relic matches 1.. store result score @s aa.relic run random value 1..3
