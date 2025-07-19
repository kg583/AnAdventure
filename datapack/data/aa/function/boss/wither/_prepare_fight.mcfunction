# Health scaling
execute store result score .difficulty local run difficulty
execute as @e[type=minecraft:wither,nbt={Invul:220}] at @s run function aa:boss/wither/set_health

function aa:boss/wither/fight
