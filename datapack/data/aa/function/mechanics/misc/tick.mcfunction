# Ravagers & evoker fangs trample crops
execute as @e[type=minecraft:ravager] at @s run function aa:mechanics/misc/trample
execute as @e[type=minecraft:evoker_fangs] at @s positioned ~ ~1 ~ run function aa:mechanics/misc/trample

# Witches turn flowers saplings into dead bushes
execute as @e[type=minecraft:witch] at @s run function aa:mechanics/misc/dry_out

# Lightning makes fulgurites sometimes
execute as @e[type=minecraft:lightning_bolt] at @s positioned ~ ~-1 ~ run function aa:mechanics/misc/fulgurite

# Tipped arrows spawn area effect clouds
execute as @e[type=minecraft:arrow,tag=!aa.lingered,predicate=c:entity/in_ground] if data entity @s item.components."minecraft:potion_contents" at @s run function aa:mechanics/misc/tipped_arrows

# Iron golems are repaired by nearby smiths
execute as @e[type=minecraft:iron_golem] if score @s aa.cooldown matches ..0 at @s if entity @e[type=minecraft:villager,predicate=aa:mechanics/misc/is_smith,distance=..3] run function aa:mechanics/misc/heal_golem
scoreboard players remove @e[type=minecraft:iron_golem] aa.cooldown 1
