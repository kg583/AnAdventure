$execute if block ~ ~ ~ $(block) run return run function aa:util/return with storage aa:io

scoreboard players add #count aa.io 1
scoreboard players operation #mod aa.local = #count aa.io

# Finished all y levels?
execute if score #count aa.io = #y_total aa.io run return fail

# Finished all z levels?
scoreboard players operation #mod aa.local %= #z_total aa.io
$execute if score #mod aa.local matches 0 positioned ~-$(x_back) ~1 ~-$(z_back) run return run function aa:util/block/_find with storage aa:io

# Finished all x levels?
scoreboard players operation #mod aa.local %= #x_total aa.io
$execute if score #mod aa.local matches 0 positioned ~-$(x_back) ~ ~1 run return run function aa:util/block/_find with storage aa:io

execute positioned ~1 ~ ~ run return run function aa:util/block/_find with storage aa:io
