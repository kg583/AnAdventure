# Get raid level
scoreboard players set @a aa.raid -1
execute as @a if data entity @s active_effects[{id:"minecraft:raid_omen"}] store result score @s aa.raid run data get entity @s active_effects[{id:"minecraft:raid_omen"}].amplifier
scoreboard players add @a aa.raid 1

# Ravagers trample crops
execute as @e[tag=!smithed.entity,type=minecraft:ravager] at @s run function aa:mechanics/raid/trample

# Evoker fangs trample crops and explode blocks
execute as @e[tag=!smithed.entity,type=minecraft:evoker_fangs] at @s run function aa:mechanics/raid/evoker_fangs
