scoreboard players remove @s aa.local 1
effect give @a[distance=..32] minecraft:blindness 2

# Spawn on players
execute at @a[distance=..32] positioned ~ ~ ~1 summon minecraft:wither_skeleton run tag @s add aa.wither_reinforcement
execute at @a[distance=..32] positioned ~ ~ ~-1 summon minecraft:wither_skeleton run tag @s add aa.wither_reinforcement
execute if score .difficulty aa.local matches 2.. at @a[distance=..32] positioned ~1 ~ ~ summon minecraft:wither_skeleton run tag @s add aa.wither_reinforcement
execute if score .difficulty aa.local matches 3.. at @a[distance=..32] positioned ~-1 ~ ~ summon minecraft:wither_skeleton run tag @s add aa.wither_reinforcement

execute as @e[type=minecraft:wither_skeleton,tag=aa.wither_reinforcement] run attribute @s minecraft:scale base set 0.66
execute as @e[type=minecraft:wither_skeleton,tag=aa.wither_reinforcement] run attribute @s minecraft:movement_speed base set 0.35
execute at @e[type=minecraft:wither_skeleton,tag=aa.wither_reinforcement] run setblock ~ ~ ~ minecraft:air destroy
 