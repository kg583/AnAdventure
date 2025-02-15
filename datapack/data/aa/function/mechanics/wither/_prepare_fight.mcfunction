# Health scaling
execute store result score .difficulty local run difficulty
execute as @e[type=minecraft:wither,nbt={Invul:220}] at @s run function aa:mechanics/wither/set_health

# Skeleton phase
execute as @e[type=minecraft:wither,nbt={Invul:220}] store result score @s local run data get entity @s Health
execute as @e[type=minecraft:wither,nbt={Invul:220}] run scoreboard players operation @s local /= #100 const

function aa:mechanics/wither/fight
