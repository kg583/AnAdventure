# "Consts"
execute store result score #difficulty aa.const run difficulty
execute store result score #day aa.const run time query day
execute store result score #daytime aa.const run time query daytime
execute store result score #gametime aa.const run time query gametime
execute store result score #seed aa.const run seed

scoreboard players operation #moon aa.const = #day aa.const
scoreboard players add #moon aa.const 1
scoreboard players operation #moon aa.const %= #8 aa.const
