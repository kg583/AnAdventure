execute as @e[tag=aa.dynamic.talking] at @s run function aa:story/dialogue/tick
execute as @e[tag=aa.static.talking] at @s unless entity @e[tag=aa.dynamic.talking,distance=..2] run kill @s
