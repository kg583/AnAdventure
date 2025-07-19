$execute if block ~ ~ ~ $(block) run function $(callback) with storage aa:io
$execute if block ~ ~ ~ $(block) run return 1

scoreboard players add .count io 1
scoreboard players operation .mod local = .count io

# Finished all y levels?
execute if score .count io = .y_total io run return fail

# Finished all z levels?
scoreboard players operation .mod local %= .z_total io
$execute if score .mod local matches 0 positioned ~-$(x_back) ~1 ~-$(z_back) run return run function aa:util/block/_find with storage aa:io

# Finished all x levels?
scoreboard players operation .mod local %= .x_total io
$execute if score .mod local matches 0 positioned ~-$(x_back) ~ ~1 run return run function aa:util/block/_find with storage aa:io

execute positioned ~1 ~ ~ run return run function aa:util/block/_find with storage aa:io
