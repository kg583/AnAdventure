# Grab relevant data
data modify storage aa:io element set value {}
data modify storage aa:io element.name set from entity @s CustomName
data modify storage aa:io element.level set from entity @s VillagerData.level
data modify storage aa:io element.type set from entity @s VillagerData.type

# Turn profession into translation key
function aa:mechanics/nearby/translate with entity @s VillagerData

# Append to lists
data modify storage aa:story villagers.any append from storage aa:io element
execute unless data storage aa:io element{profession:"minecraft:none"} unless data storage aa:io element{profession:"minecraft:nitwit"} run data modify storage aa:story villagers.employed append from storage aa:io element
