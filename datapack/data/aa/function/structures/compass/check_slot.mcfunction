$execute if items entity @s $(slot).$(number) minecraft:compass[minecraft:custom_data] run data modify storage aa:io custom_data set from entity @s Inventory[{Slot:$(index)b}].components."minecraft:custom_data"
$execute if items entity @s $(slot).$(number) minecraft:compass[minecraft:custom_data] run function aa:structures/compass/locate
