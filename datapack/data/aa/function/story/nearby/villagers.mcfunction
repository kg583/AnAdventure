data modify storage aa:story villagers set value {any:[],employed:[]}

# Append nearby villagers
execute as @e[type=minecraft:villager,distance=..64,limit=5] run function aa:story/nearby/get

# Add failsafes
execute unless data storage aa:story villagers.any[0] run data modify storage aa:story villagers.any append value {name:"Jon",profession:{translate:"entity.minecraft.villager.none"},level:1,type:"minecraft:plains"}
execute unless data storage aa:story villagers.employed[0] run data modify storage aa:story villagers.employed append value {name:"Jon",profession:{translate:"entity.minecraft.villager.farmer"},level:1,type:"minecraft:plains"}

advancement revoke @s only aa:story/nearby/villagers
