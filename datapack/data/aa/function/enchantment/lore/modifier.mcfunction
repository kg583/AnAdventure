# Get stored enchantments
data modify storage aa:io enchantments set value {}
execute if data storage aa:io components."minecraft:stored_enchantments" run data modify storage aa:io enchantments set from storage aa:io components."minecraft:stored_enchantments"
execute store result score #length aa.local run data get storage aa:io enchantments

# Did we already add lore?
execute store result score #lore aa.local run data get storage aa:io components."minecraft:lore"
execute if score #lore aa.local > #length aa.local run return fail

# If not, add it based on number of stored enchantments
execute if score #length aa.local matches 0 run data merge storage aa:io {namespace:"minecraft",enchantment:"empty"}
execute if score #length aa.local matches 2.. run data merge storage aa:io {namespace:"minecraft",enchantment:"multiple"}
execute if score #length aa.local matches 1 run function aa:enchantment/lore/get with storage aa:io

function aa:enchantment/lore/replace with storage aa:io
