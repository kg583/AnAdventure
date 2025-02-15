attribute @s minecraft:max_health base set 26
data modify entity @s Health set value 26

attribute @s minecraft:spawn_reinforcements base set 0.1
attribute @s minecraft:follow_range base set 40

execute store result score .parent rand run random value 0..9
execute if score .parent rand matches 8.. run summon minecraft:zombie ~ ~ ~0.1 {IsBaby:1b}

tag @s add aa.tiered
