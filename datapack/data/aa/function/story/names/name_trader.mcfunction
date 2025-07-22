# Select name type
execute store result score .name_type aa.rand run random value 1..7
execute if score .name_type aa.rand matches 1 run function aa:story/names/select {type:"minecraft:desert"}
execute if score .name_type aa.rand matches 2 run function aa:story/names/select {type:"minecraft:jungle"}
execute if score .name_type aa.rand matches 3 run function aa:story/names/select {type:"minecraft:plains"}
execute if score .name_type aa.rand matches 4 run function aa:story/names/select {type:"minecraft:savanna"}
execute if score .name_type aa.rand matches 5 run function aa:story/names/select {type:"minecraft:snow"}
execute if score .name_type aa.rand matches 6 run function aa:story/names/select {type:"minecraft:swamp"}
execute if score .name_type aa.rand matches 7 run function aa:story/names/select {type:"minecraft:taiga"}
