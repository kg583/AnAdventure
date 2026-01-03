# Did we reach a quote?
data modify storage aa:io target set value '"'
execute store success score #success aa.local run data modify storage aa:io target set string storage aa:io string 0 1

# Return if we did
execute if score #success aa.local matches 0 run return 1

# Keep going otherwise
scoreboard players add #enchantment aa.io 1
data modify storage aa:io string set string storage aa:io string 1
function aa:enchantment/lore/find_enchantment
