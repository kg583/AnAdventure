# Select name type
execute store result score .name_type aa.rand run random value 1..4
execute if score .name_type aa.rand matches 1 run function aa:mechanics/names/select {type:"minecraft:none"}
execute unless score .name_type aa.rand matches 1 run function aa:mechanics/names/select with entity @s VillagerData
