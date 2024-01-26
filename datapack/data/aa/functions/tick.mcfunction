# Scoreboard
execute as @e[type=!minecraft:marker] store result score @s x run data get entity @s Pos[0]
execute as @e[type=!minecraft:marker] store result score @s y run data get entity @s Pos[1]
execute as @e[type=!minecraft:marker] store result score @s z run data get entity @s Pos[2]

# PRNG
scoreboard players add aa.prng var 7
scoreboard players operation aa.prng var *= aa.prng.mult const
scoreboard players operation aa.prng var %= aa.prng.max const

# Module ticks
function aa:mechanics/tick
function aa:story/tick