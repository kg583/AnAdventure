# Grab relevant data
data modify storage aa:io element set value {}
data modify storage aa:io element.name set from entity @s CustomName
data modify storage aa:io element.profession set from entity @s VillagerData.profession
data modify storage aa:io element.level set from entity @s VillagerData.level
data modify storage aa:io element.type set from entity @s VillagerData.type

# Turn profession into translation key
function aa:story/nearby/translate with storage aa:io element

# Append to list
data modify storage aa:io list append from storage aa:io element
