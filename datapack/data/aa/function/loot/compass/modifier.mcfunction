execute unless data storage aa:io custom_data.pos run function aa:loot/compass/locate
execute if data storage aa:io custom_data.pos run data modify storage aa:io pos set from storage aa:io custom_data.pos

function aa:loot/compass/replace with storage aa:io
