# Random quadrant
execute store result score .quadrant local run seed
scoreboard players operation .quadrant local %= #4 const

execute if score .quadrant local matches 0 run function aa:mechanics/skyfall {x:2000,z:2000}
execute if score .quadrant local matches 1 run function aa:mechanics/skyfall {x:2000,z:-2000}
execute if score .quadrant local matches 2 run function aa:mechanics/skyfall {x:-2000,z:2000}
execute if score .quadrant local matches 3 run function aa:mechanics/skyfall {x:-2000,z:-2000}

schedule function aa:mechanics/end/enter_end_platform 3s replace

advancement revoke @s only aa:mechanics/end/enter_end
