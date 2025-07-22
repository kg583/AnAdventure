# Random quadrant
execute store result score .quadrant aa.local run seed
scoreboard players operation .quadrant aa.local %= #4 aa.const

execute if score .quadrant aa.local matches 0 run function aa:mechanics/skyfall {x:2000,z:2000}
execute if score .quadrant aa.local matches 1 run function aa:mechanics/skyfall {x:2000,z:-2000}
execute if score .quadrant aa.local matches 2 run function aa:mechanics/skyfall {x:-2000,z:2000}
execute if score .quadrant aa.local matches 3 run function aa:mechanics/skyfall {x:-2000,z:-2000}

schedule function aa:mechanics/end/falling 3s append

advancement revoke @s only aa:mechanics/end/enter
