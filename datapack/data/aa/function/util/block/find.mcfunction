# Setup
scoreboard players set .count io 0

execute store result score .x_offset io run data get storage aa:io x_radius
scoreboard players operation .x_dist io = .x_offset io
scoreboard players operation .x_dist io += .x_offset io
execute store result storage aa:io x_back int 1 run scoreboard players get .x_dist io
scoreboard players add .x_dist io 1
scoreboard players operation .x_total io = .x_dist io

execute store result score .z_offset io run data get storage aa:io z_radius
scoreboard players operation .z_dist io = .z_offset io
scoreboard players operation .z_dist io += .z_offset io
execute store result storage aa:io z_back int 1 run scoreboard players get .z_dist io
scoreboard players add .z_dist io 1
scoreboard players operation .z_total io = .z_dist io
scoreboard players operation .z_total io *= .x_dist io

execute store result score .y_offset io run data get storage aa:io y_offset
execute store result score .y_dist io run data get storage aa:io y_distance
scoreboard players operation .y_total io = .y_dist io
scoreboard players operation .y_total io *= .z_total io

# Find block
$execute store success score .success local positioned ~-$(x_radius) ~-$(y_offset) ~-$(z_radius) align xyz run function aa:util/block/_find with storage aa:io
execute if score .success local matches 0 run return fail

# Turn count into local coordinates
scoreboard players operation .x io = .count io
scoreboard players operation .x io %= .x_dist io
scoreboard players operation .x io -= .x_offset io

scoreboard players operation .z io = .count io
scoreboard players operation .z io /= .x_dist io
scoreboard players operation .z io %= .z_dist io
scoreboard players operation .z io -= .z_offset io

scoreboard players operation .y io = .count io
scoreboard players operation .y io /= .z_total io
scoreboard players operation .y io %= .y_dist io
scoreboard players operation .y io -= .y_offset io

# Add to absolute coordinates
execute store result score .x local run data get entity @s Pos[0]
execute store result score .y local run data get entity @s Pos[1]
execute store result score .z local run data get entity @s Pos[2]

scoreboard players operation .x io += .x local
scoreboard players operation .y io += .y local
scoreboard players operation .z io += .z local

return 1
