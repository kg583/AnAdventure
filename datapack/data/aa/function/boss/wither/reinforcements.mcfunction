scoreboard players remove @s aa.cooldown 1
effect give @a[distance=..32] minecraft:blindness 2

# Spawn on players
execute at @a[distance=..32] positioned ~ ~ ~1 summon minecraft:wither_skeleton run tag @s add aa.wither.reinforcement
execute at @a[distance=..32] positioned ~ ~ ~-1 summon minecraft:wither_skeleton run tag @s add aa.wither.reinforcement
execute if score #difficulty aa.const matches 2.. at @a[distance=..32] positioned ~1 ~ ~ summon minecraft:wither_skeleton run tag @s add aa.wither.reinforcement
execute if score #difficulty aa.const matches 3.. at @a[distance=..32] positioned ~-1 ~ ~ summon minecraft:wither_skeleton run tag @s add aa.wither.reinforcement

execute as @e[type=minecraft:wither_skeleton,tag=aa.wither.reinforcement] run attribute @s minecraft:scale base set 0.66
execute as @e[type=minecraft:wither_skeleton,tag=aa.wither.reinforcement] run attribute @s minecraft:movement_speed base set 0.35
execute at @e[type=minecraft:wither_skeleton,tag=aa.wither.reinforcement] run setblock ~ ~ ~ minecraft:air destroy
 