# "Consts"
execute store result score #difficulty const run difficulty
execute store result score #daytime const run time query daytime

execute store result score #moon const run time query day
scoreboard players add #moon const 1
scoreboard players operation #moon const %= #8 const
