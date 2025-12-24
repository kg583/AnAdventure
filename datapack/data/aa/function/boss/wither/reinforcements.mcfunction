scoreboard players remove @s aa.cooldown 1
effect give @a[distance=..32] minecraft:blindness 2

# Spawn on players
execute at @a[distance=..32] run summon minecraft:wither_skeleton ~ ~ ~1 {Tags:["aa.wither.reinforcement","smithed.entity"]}
execute at @a[distance=..32] run summon minecraft:wither_skeleton ~ ~ ~-1 {Tags:["aa.wither.reinforcement","smithed.entity"]}
execute if score #difficulty aa.const matches 2.. at @a[distance=..32] run summon minecraft:wither_skeleton ~1 ~ ~ {Tags:["aa.wither.reinforcement","smithed.entity"]}
execute if score #difficulty aa.const matches 3.. at @a[distance=..32] run summon minecraft:wither_skeleton ~-1 ~ ~ {Tags:["aa.wither.reinforcement","smithed.entity"]}

execute as @e[distance=..36,type=minecraft:wither_skeleton,tag=aa.wither.reinforcement] at @s run function aa:boss/wither/_reinforcements
 