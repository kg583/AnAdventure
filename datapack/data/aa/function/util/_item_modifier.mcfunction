$execute if items entity @s $(slot) $(item)[minecraft:custom_data] run data modify storage aa:io custom_data set from entity @s Inventory[{Slot:$(index)b}].components."minecraft:custom_data".aa
$execute if items entity @s $(slot) $(item)[minecraft:custom_data] run function $(directory)/modifier
