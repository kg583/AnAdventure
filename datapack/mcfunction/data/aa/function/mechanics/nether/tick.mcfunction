# Set unprotected players on fire
execute as @a store result score @s local run data get entity @s Fire
execute as @a at @s if dimension minecraft:the_nether unless score @s local matches 1.. run function aa:mechanics/nether/check_fire_protection
execute as @e[tag=aa.sparky] at @s unless entity @e[type=!minecraft:small_fireball,distance=..3] run kill @s
