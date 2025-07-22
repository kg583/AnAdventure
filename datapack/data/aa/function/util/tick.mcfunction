# "Consts"
execute store result score #difficulty aa.const run difficulty
execute store result score #daytime aa.const run time query daytime
execute store result score #seed aa.const run seed

execute store result score #moon aa.const run time query day
scoreboard players add #moon aa.const 1
scoreboard players operation #moon aa.const %= #8 aa.const
