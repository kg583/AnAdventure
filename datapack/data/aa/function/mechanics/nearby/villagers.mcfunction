data modify storage aa:story villagers set value {any:[],employed:[]}

# Append nearby villagers
execute as @e[type=minecraft:villager,distance=..64,limit=5] run function aa:mechanics/nearby/get

# Set profession subsets
data modify storage aa:story villagers.armorer set from storage aa:story villagers.employed[{profession:"minecraft:armorer"}]
data modify storage aa:story villagers.butcher set from storage aa:story villagers.employed[{profession:"minecraft:butcher"}]
data modify storage aa:story villagers.cartographer set from storage aa:story villagers.employed[{profession:"minecraft:cartographer"}]
data modify storage aa:story villagers.cleric set from storage aa:story villagers.employed[{profession:"minecraft:cleric"}]
data modify storage aa:story villagers.farmer set from storage aa:story villagers.employed[{profession:"minecraft:farmer"}]
data modify storage aa:story villagers.fletcher set from storage aa:story villagers.employed[{profession:"minecraft:fletcher"}]
data modify storage aa:story villagers.leatherworker set from storage aa:story villagers.employed[{profession:"minecraft:leatherworker"}]
data modify storage aa:story villagers.librarian set from storage aa:story villagers.employed[{profession:"minecraft:librarian"}]
data modify storage aa:story villagers.mason set from storage aa:story villagers.employed[{profession:"minecraft:mason"}]
data modify storage aa:story villagers.shepherd set from storage aa:story villagers.employed[{profession:"minecraft:shepherd"}]
data modify storage aa:story villagers.toolsmith set from storage aa:story villagers.employed[{profession:"minecraft:toolsmith"}]
data modify storage aa:story villagers.weaponsmith set from storage aa:story villagers.employed[{profession:"minecraft:weaponsmith"}]

# Add failsafes
execute unless data storage aa:story villagers.any[0] run data modify storage aa:story villagers.any append value \
    {name:"Jon",profession:{translate:"entity.minecraft.villager.none"},level:1,type:"minecraft:plains"}
execute unless data storage aa:story villagers.employed[0] run data modify storage aa:story villagers.employed append value \
    {name:"Mac",profession:{translate:"entity.minecraft.villager.farmer"},level:1,type:"minecraft:plains"}

data modify storage aa:story villagers.armorer append value \
    {name:"Adrianne",profession:{translate:"entity.minecraft.villager.armorer"},level:1,type:"minecraft:plains"}
data modify storage aa:story villagers.butcher append value \
    {name:"Sid",profession:{translate:"entity.minecraft.villager.butcher"},level:1,type:"minecraft:plains"}
data modify storage aa:story villagers.cartographer append value \
    {name:"Gerard",profession:{translate:"entity.minecraft.villager.cartographer"},level:1,type:"minecraft:plains"}
data modify storage aa:story villagers.cleric append value \
    {name:"Danica",profession:{translate:"entity.minecraft.villager.cleric"},level:1,type:"minecraft:plains"}
data modify storage aa:story villagers.farmer append value \
    {name:"Mac",profession:{translate:"entity.minecraft.villager.farmer"},level:1,type:"minecraft:plains"}
data modify storage aa:story villagers.fletcher append value \
    {name:"Mundun",profession:{translate:"entity.minecraft.villager.fletcher"},level:1,type:"minecraft:plains"}
data modify storage aa:story villagers.leatherworker append value \
    {name:"Avaca",profession:{translate:"entity.minecraft.villager.leatherworker"},level:1,type:"minecraft:plains"}
data modify storage aa:story villagers.librarian append value \
    {name:"Herma",profession:{translate:"entity.minecraft.villager.librarian"},level:1,type:"minecraft:plains"}
data modify storage aa:story villagers.mason append value \
    {name:"Birk",profession:{translate:"entity.minecraft.villager.mason"},level:1,type:"minecraft:plains"}
data modify storage aa:story villagers.shepherd append value \
    {name:"Joshua",profession:{translate:"entity.minecraft.villager.shepherd"},level:1,type:"minecraft:plains"}
data modify storage aa:story villagers.toolsmith append value \
    {name:"Kag",profession:{translate:"entity.minecraft.villager.toolsmith"},level:1,type:"minecraft:plains"}
data modify storage aa:story villagers.weaponsmith append value \
    {name:"Beirand",profession:{translate:"entity.minecraft.villager.weaponsmith"},level:1,type:"minecraft:plains"}

advancement revoke @s only aa:mechanics/nearby/villagers
