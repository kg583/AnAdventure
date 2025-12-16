# Module starts
function aa:story/names/start

# Start chapters
data modify storage aa:story progress set value {chapter:1}
schedule function aa:chapter/beginning 7s replace

# Translation keys
data modify storage aa:storage translations set value {}
data modify storage aa:storage translations.professions set value {"minecraft:armorer":{translate:"entity.minecraft.villager.armorer"},"minecraft:butcher":{translate:"entity.minecraft.villager.butcher"},"minecraft:cartographer":{translate:"entity.minecraft.villager.cartographer"},"minecraft:cleric":{translate:"entity.minecraft.villager.cleric"},"minecraft:farmer":{translate:"entity.minecraft.villager.farmer"},"minecraft:fisherman":{translate:"entity.minecraft.villager.fisherman"},"minecraft:fletcher":{translate:"entity.minecraft.villager.fletcher"},"minecraft:leatherworker":{translate:"entity.minecraft.villager.leatherworker"},"minecraft:librarian":{translate:"entity.minecraft.villager.librarian"},"minecraft:mason":{translate:"entity.minecraft.villager.mason"},"minecraft:nitwit":{translate:"entity.minecraft.villager.nitwit"},"minecraft:none":{translate:"entity.minecraft.villager.none"},"minecraft:shepherd":{translate:"entity.minecraft.villager.shepherd"},"minecraft:toolsmith":{translate:"entity.minecraft.villager.toolsmith"},"minecraft:weaponsmith":{translate:"entity.minecraft.villager.weaponsmith"}}
