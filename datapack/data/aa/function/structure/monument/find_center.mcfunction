advancement revoke @s only aa:structure/monument/find_center

# Did we already process this temple?
execute if entity @e[type=minecraft:marker,tag=aa.monument,distance=..40] run return fail

# Locate a gold block
data merge storage aa:io {x_radius:8,z_radius:8,y_offset:8,y_distance:17,block:"minecraft:gold_block",callback:"aa:structure/monument/orient_x"}
function aa:util/block/find with storage aa:io
