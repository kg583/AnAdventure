attribute @s minecraft:movement_speed base set 0.35
attribute @s minecraft:follow_range base set 24

execute store result score .charged rand run random value 0..9
execute if score .charged rand matches 8.. run data modify entity @s powered set value true

tag @s add aa.tiered
