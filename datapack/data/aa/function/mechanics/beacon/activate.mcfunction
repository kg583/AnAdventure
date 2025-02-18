# Find beacon
data merge storage aa:io {xr:6,zr:6,yo:6,yd:13,block:"minecraft:beacon",callback:""}
execute store success score .success local run function aa:util/block/find with storage aa:io

# Fallback
function aa:util/coords

execute if score .success local matches 1 store result storage aa:io pos.x int 1 run scoreboard players get .x io
execute if score .success local matches 1 store result storage aa:io pos.y int 1 run scoreboard players get .y io
execute if score .success local matches 1 store result storage aa:io pos.z int 1 run scoreboard players get .z io
data modify storage aa:story beacon_spawn_pos set from storage aa:io pos

advancement revoke @s only aa:mechanics/beacon/activate
