# Set unprotected players on fire
execute as @a store result score @s var run data get entity @s Fire
execute as @a at @s if dimension minecraft:the_nether unless score @s var matches 1.. run function aa:mechanics/nether/check_fire_protection
execute as @e[tag=aa.dynamic.fire_protection] at @s unless entity @e[type=!minecraft:small_fireball,distance=..3] run kill @s
