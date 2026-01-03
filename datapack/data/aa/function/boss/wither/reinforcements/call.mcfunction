scoreboard players remove @s aa.cooldown 1
effect give @a[distance=..32] minecraft:blindness 2

# Spawn on players
execute at @a[distance=..32] run function aa:boss/wither/reinforcements/summon
execute as @e[distance=..36,type=minecraft:wither_skeleton,tag=aa.wither.reinforcement] at @s run function aa:boss/wither/reinforcements/scale
 