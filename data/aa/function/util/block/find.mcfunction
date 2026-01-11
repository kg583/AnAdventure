# Setup
scoreboard players set #count aa.io 0

execute store result score #x_offset aa.io run data get storage aa:io x_radius
scoreboard players operation #x_dist aa.io = #x_offset aa.io
scoreboard players operation #x_dist aa.io += #x_offset aa.io
execute store result storage aa:io x_back int 1 run scoreboard players get #x_dist aa.io
scoreboard players add #x_dist aa.io 1
scoreboard players operation #x_total aa.io = #x_dist aa.io

execute store result score #z_offset aa.io run data get storage aa:io z_radius
scoreboard players operation #z_dist aa.io = #z_offset aa.io
scoreboard players operation #z_dist aa.io += #z_offset aa.io
execute store result storage aa:io z_back int 1 run scoreboard players get #z_dist aa.io
scoreboard players add #z_dist aa.io 1
scoreboard players operation #z_total aa.io = #z_dist aa.io
scoreboard players operation #z_total aa.io *= #x_dist aa.io

execute store result score #y_offset aa.io run data get storage aa:io y_offset
execute store result score #y_dist aa.io run data get storage aa:io y_distance
scoreboard players operation #y_total aa.io = #y_dist aa.io
scoreboard players operation #y_total aa.io *= #z_total aa.io

# Find block
$execute store success score #success aa.local positioned ~-$(x_radius) ~-$(y_offset) ~-$(z_radius) align xyz positioned ~.5 ~ ~.5 run function aa:util/block/_find with storage aa:io
execute if score #success aa.local matches 0 run return fail

# Turn count into aa.local coordinates
scoreboard players operation #x aa.io = #count aa.io
scoreboard players operation #x aa.io %= #x_dist aa.io
scoreboard players operation #x aa.io -= #x_offset aa.io

scoreboard players operation #z aa.io = #count aa.io
scoreboard players operation #z aa.io /= #x_dist aa.io
scoreboard players operation #z aa.io %= #z_dist aa.io
scoreboard players operation #z aa.io -= #z_offset aa.io

scoreboard players operation #y aa.io = #count aa.io
scoreboard players operation #y aa.io /= #z_total aa.io
scoreboard players operation #y aa.io %= #y_dist aa.io
scoreboard players operation #y aa.io -= #y_offset aa.io

# Add to absolute coordinates
execute store result score #x aa.local run data get entity @s Pos[0]
execute store result score #y aa.local run data get entity @s Pos[1]
execute store result score #z aa.local run data get entity @s Pos[2]

scoreboard players operation #x aa.io += #x aa.local
scoreboard players operation #y aa.io += #y aa.local
scoreboard players operation #z aa.io += #z aa.local

return 1
