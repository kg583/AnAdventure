# Random quadrant
execute store result score aa.mechanics.end var run seed
scoreboard players operation aa.mechanics.end var %= #FOUR const

execute if score aa.mechanics.end var matches 0 run function aa:mechanics/skyfall {x:2000,z:2000}
execute if score aa.mechanics.end var matches 1 run function aa:mechanics/skyfall {x:2000,z:-2000}
execute if score aa.mechanics.end var matches 2 run function aa:mechanics/skyfall {x:-2000,z:2000}
execute if score aa.mechanics.end var matches 3 run function aa:mechanics/skyfall {x:-2000,z:-2000}

schedule function aa:mechanics/end/enter_end_platform 3s append
execute unless data storage aa:progress Milestone.End run schedule function aa:mechanics/end/announce_end_enter 11s append

advancement revoke @s only aa:mechanics/end/enter_end
