advancement revoke @s only aa:structure/monument/find_center

# Did we already process this temple?
execute if entity @e[type=minecraft:marker,tag=aa.monument,distance=..40] run return fail

# Locate a gold block
data merge storage aa:io {xr:8,zr:8,yo:8,yd:17,block:"minecraft:gold_block",callback:"aa:structure/monument/orient_x"}
function aa:util/block/find with storage aa:io
