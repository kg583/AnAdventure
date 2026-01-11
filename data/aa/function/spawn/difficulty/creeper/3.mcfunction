attribute @s minecraft:movement_speed base set 0.32
attribute @s minecraft:follow_range base set 24

execute store result score #charged aa.rand run random value 0..19
execute if score #charged aa.rand matches 18.. run data modify entity @s powered set value true
