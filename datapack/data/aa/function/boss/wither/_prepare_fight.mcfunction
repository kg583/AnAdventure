# Health scaling
execute as @e[type=minecraft:wither] if data entity @s {Invul:220} at @s run function aa:boss/wither/set_health

function aa:boss/wither/fight
