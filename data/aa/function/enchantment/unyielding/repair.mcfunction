$data modify storage aa:io id set from entity @s Inventory[{Slot:$(index)b}].id
$data modify storage aa:io components set from entity @s Inventory[{Slot:$(index)b}].components
data remove storage aa:io components."minecraft:tool"
function aa:enchantment/unyielding/set with storage aa:io
