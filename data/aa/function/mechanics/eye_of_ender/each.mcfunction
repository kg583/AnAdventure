# Increment timer
scoreboard players add @s aa.cooldown 1

# Check timer
execute if score @s aa.cooldown matches 81.. run function aa:mechanics/eye_of_ender/watch
