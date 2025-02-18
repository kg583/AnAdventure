# Setup
scoreboard players set .count io 0

execute store result score .xr io run data get storage aa:io xr
scoreboard players operation .xd io = .xr io
scoreboard players operation .xd io += .xr io
execute store result storage aa:io xo int 1 run scoreboard players get .xd io
scoreboard players add .xd io 1
scoreboard players operation .xt io = .xd io

execute store result score .zr io run data get storage aa:io zr
scoreboard players operation .zd io = .zr io
scoreboard players operation .zd io += .zr io
execute store result storage aa:io zo int 1 run scoreboard players get .zd io
scoreboard players add .zd io 1
scoreboard players operation .zt io = .zd io
scoreboard players operation .zt io *= .xd io

execute store result score .yo io run data get storage aa:io yo
execute store result score .yd io run data get storage aa:io yd
scoreboard players operation .yt io = .yd io
scoreboard players operation .yt io *= .zt io

# Find block
$execute store success score .success local positioned ~-$(xr) ~-$(yo) ~-$(zr) align xyz run function aa:util/block/_find with storage aa:io
execute if score .success local matches 0 run return fail

# Turn count into local coordinates
scoreboard players operation .x io = .count io
scoreboard players operation .x io %= .xd io
scoreboard players operation .x io -= .xr io

scoreboard players operation .z io = .count io
scoreboard players operation .z io /= .xd io
scoreboard players operation .z io %= .zd io
scoreboard players operation .z io -= .zr io

scoreboard players operation .y io = .count io
scoreboard players operation .y io /= .zt io
scoreboard players operation .y io %= .yd io
scoreboard players operation .y io -= .yo io

# Add to absolute coordinates
execute store result score .x local run data get entity @s Pos[0]
execute store result score .y local run data get entity @s Pos[1]
execute store result score .z local run data get entity @s Pos[2]

scoreboard players operation .x io += .x local
scoreboard players operation .y io += .y local
scoreboard players operation .z io += .z local

return 1
