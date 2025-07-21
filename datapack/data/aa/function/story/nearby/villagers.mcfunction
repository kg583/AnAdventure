data modify storage aa:story villagers set value {}

# Append nearby villagers
data modify storage aa:io list set value []
execute as @e[type=minecraft:villager,distance=..64,limit=5] run function aa:story/nearby/get
data modify storage aa:story villagers.any set from storage aa:io list

data modify storage aa:io list set value []
execute as @e[type=minecraft:villager,distance=..64,nbt=!{VillagerData:{profession:"minecraft:none"}},limit=5] run function aa:story/nearby/get
data modify storage aa:story villagers.employed set from storage aa:io list

# Add failsafes
execute unless data storage aa:story villagers.any[0] run data modify storage aa:story villagers.any append value {name:"Jon",profession:{translate:"entity.minecraft.villager.none"},level:1,type:"minecraft:plains"}
execute unless data storage aa:story villagers.employed[0] run data modify storage aa:story villagers.employed append value {name:"Jon",profession:{translate:"entity.minecraft.villager.farmer"},level:1,type:"minecraft:plains"}
