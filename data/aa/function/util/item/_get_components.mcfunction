$execute if items entity @s $(slot) $(item)[$(test)] run data modify storage aa:io components set from entity @s Inventory[{Slot:$(index)b}].components
$execute if items entity @s $(slot) $(item)[$(test)] run function $(directory)/modifier
