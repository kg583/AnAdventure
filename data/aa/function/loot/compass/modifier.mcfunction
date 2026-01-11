execute unless data storage aa:io components."minecraft:custom_data".aa.pos run function aa:loot/compass/locate
execute if data storage aa:io components."minecraft:custom_data".aa.pos run data modify storage aa:io pos set from storage aa:io data.aa.pos

function aa:loot/compass/replace with storage aa:io
