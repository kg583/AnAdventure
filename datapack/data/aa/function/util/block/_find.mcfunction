$execute if block ~ ~ ~ $(block) run function $(callback) with storage aa:io
$execute if block ~ ~ ~ $(block) run return 1

scoreboard players add .count io 1
scoreboard players operation .mod local = .count io

# Finished all y levels?
execute if score .count io = .yt io run return fail

# Finished all z levels?
scoreboard players operation .mod local %= .zt io
$execute if score .mod local matches 0 positioned ~-$(xo) ~1 ~-$(zo) run return run function aa:util/block/_find with storage aa:io

# Finished all x levels?
scoreboard players operation .mod local %= .xt io
$execute if score .mod local matches 0 positioned ~-$(xo) ~ ~1 run return run function aa:util/block/_find with storage aa:io

execute positioned ~1 ~ ~ run return run function aa:util/block/_find with storage aa:io
