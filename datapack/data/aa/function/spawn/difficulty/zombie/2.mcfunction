attribute @s minecraft:max_health base set 24
data modify entity @s Health set value 24

attribute @s minecraft:follow_range base set 38

execute store result score #parent aa.rand run random value 0..9
execute if score #parent aa.rand matches 9.. run summon minecraft:zombie ~ ~ ~0.1 {IsBaby:1b}
