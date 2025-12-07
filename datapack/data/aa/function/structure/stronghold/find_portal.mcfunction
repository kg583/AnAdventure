advancement revoke @s only aa:structure/stronghold/find_portal

# Did we already process this stronhold?
execute if entity @e[type=minecraft:marker,tag=aa.stronghold,distance=..128] run return fail

# Locate an end portal frame
data merge storage aa:io {x_radius:16,z_radius:16,y_offset:6,y_distance:13,block:"minecraft:end_portal_frame",callback:"aa:structure/stronghold/orient"}
function aa:util/block/find with storage aa:io
