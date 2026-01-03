# Find beacon
data merge storage aa:io {x_radius:6,z_radius:6,y_offset:6,y_distance:13,block:"minecraft:beacon",callback:""}
execute store success score #success aa.local run function aa:util/block/find with storage aa:io

execute store result storage aa:io pos.x int 1 run scoreboard players get #x aa.io
execute store result storage aa:io pos.y int 1 run scoreboard players get #y aa.io
execute store result storage aa:io pos.z int 1 run scoreboard players get #z aa.io

# Fallback
execute if score #success aa.local matches 0 run function aa:util/coords

# Set spawn point
data modify storage aa:story beacon_spawn_pos set from storage aa:io pos
title @s actionbar {translate:"text.aa.activate_beacon"}

advancement revoke @s only aa:mechanics/beacon/activate
