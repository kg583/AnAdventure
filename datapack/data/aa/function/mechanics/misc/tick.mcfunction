# Ravagers & evoker fangs trample crops
execute as @e[type=minecraft:ravager,tag=!smithed.entity] at @s run function aa:mechanics/misc/trample
execute as @e[type=minecraft:evoker_fangs,tag=!smithed.entity] at @s positioned ~ ~1 ~ run function aa:mechanics/misc/trample

# Witches turn flowers & saplings into dead bushes
execute as @e[type=minecraft:witch,tag=!smithed.entity] at @s run function aa:mechanics/misc/dry_out

# Lightning makes fulgurites sometimes
execute as @e[type=minecraft:lightning_bolt,tag=!smithed.entity] at @s positioned ~ ~-1 ~ run function aa:mechanics/misc/fulgurite

# Tipped arrows spawn area effect clouds
execute as @e[type=minecraft:arrow,tag=!smithed.entity,predicate=c:entity/in_ground] if data entity @s item.components."minecraft:potion_contents" at @s run function aa:mechanics/misc/tipped_arrows

# Iron golems are repaired by nearby smiths
scoreboard players remove @e[type=minecraft:iron_golem,tag=!smithed.entity] aa.cooldown 1
scoreboard players operation @e[type=minecraft:iron_golem,tag=!smithed.entity] aa.cooldown > #0 aa.const
execute as @e[type=minecraft:iron_golem,tag=!smithed.entity] if score @s aa.cooldown matches ..0 at @s if entity @e[type=minecraft:villager,predicate=aa:mechanics/misc/is_smith,distance=..3] run function aa:mechanics/misc/heal_golem

# Nether stars are invulnerable
execute as @e[type=minecraft:item,tag=!smithed.entity] if data entity @s Item{id:"minecraft:nether_star"} run data modify entity @s Invulnerable set value 1b

# Items don't have scaling anvil costs
execute as @a run function aa:mechanics/misc/repair_cost

# Players aren't allowed on the nether roof
execute as @a at @s if dimension minecraft:the_nether run effect give @s[y=127,dy=256] minecraft:wither 8 4 true
