# "Consts"
execute store result score #difficulty aa.const run difficulty
execute store result score #daytime aa.const run time query minecraft:day
execute store result score #gametime aa.const run time query gametime
execute store result score #seed aa.const run seed

scoreboard players operation #day aa.const = #gametime aa.const
scoreboard players operation #day aa.const /= #24000 aa.const

scoreboard players operation #moon aa.const = #day aa.const
scoreboard players add #moon aa.const 1
scoreboard players operation #moon aa.const %= #8 aa.const
