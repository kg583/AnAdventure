# Increment timer
scoreboard players add @s aa.time 1

# Check timer
execute if score @s aa.time matches 81.. run function aa:mechanics/eye_of_ender/watch
