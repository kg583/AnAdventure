# Locate structure
data modify storage aa:io category set value "structure"
data modify storage aa:io type set from storage aa:io custom_data.type
data modify storage aa:io dimension set from storage aa:io custom_data.dimension
function aa:util/locate with storage aa:io

data modify storage aa:io pos set value [I;0,0,0]
execute store result storage aa:io pos[0] int 1 run scoreboard players get .x io
execute store result storage aa:io pos[2] int 1 run scoreboard players get .z io

function aa:structures/compass/replace with storage aa:io
