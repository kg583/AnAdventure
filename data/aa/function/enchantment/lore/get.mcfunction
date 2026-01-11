# Setup
$data modify storage aa:io data set value '$(enchantments)'
data modify storage aa:io string set string storage aa:io data 2
scoreboard players set #namespace aa.io 2
scoreboard players set #enchantment aa.io 2

function aa:enchantment/lore/find_namespace with storage aa:io

# Slicing
execute store result storage aa:io namespace int 1.0 run scoreboard players get #namespace aa.io
execute store result storage aa:io start int 1.0 run scoreboard players add #namespace aa.io 1
execute store result storage aa:io enchantment int 1.0 run scoreboard players get #enchantment aa.io

function aa:enchantment/lore/extract with storage aa:io
