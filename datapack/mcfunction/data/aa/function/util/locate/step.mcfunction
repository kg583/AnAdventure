# Determine best direction
scoreboard players operation .best local = .dist local
scoreboard players operation .best local < .dist_e local
scoreboard players operation .best local < .dist_se local
scoreboard players operation .best local < .dist_s local
scoreboard players operation .best local < .dist_sw local
scoreboard players operation .best local < .dist_w local
scoreboard players operation .best local < .dist_nw local
scoreboard players operation .best local < .dist_n local
scoreboard players operation .best local < .dist_ne local

scoreboard players set .ran local 0

# Step in the best direction
execute if score .dist_e local = .best local run scoreboard players operation .x io += .step local
$execute store success score .ran local if score .dist_e local = .best local positioned ~$(step) ~ ~ run function aa:util/locate/find with storage aa:io
execute if score .ran local matches 1 run return 1

execute if score .dist_se local = .best local run scoreboard players operation .x io += .step local
execute if score .dist_se local = .best local run scoreboard players operation .z io += .step local
$execute store success score .ran local if score .dist_se local = .best local positioned ~$(step) ~ ~$(step) run function aa:util/locate/find with storage aa:io
execute if score .ran local matches 1 run return 2

execute if score .dist_s local = .best local run scoreboard players operation .z io += .step local
$execute store success score .ran local if score .dist_s local = .best local positioned ~ ~ ~$(step) run function aa:util/locate/find with storage aa:io
execute if score .ran local matches 1 run return 3

execute if score .dist_sw local = .best local run scoreboard players operation .x io -= .step local
execute if score .dist_sw local = .best local run scoreboard players operation .z io += .step local
$execute store success score .ran local if score .dist_sw local = .best local positioned ~-$(step) ~ ~$(step) run function aa:util/locate/find with storage aa:io
execute if score .ran local matches 1 run return 4

execute if score .dist_w local = .best local run scoreboard players operation .x io -= .step local
$execute store success score .ran local if score .dist_w local = .best local positioned ~-$(step) ~ ~ run function aa:util/locate/find with storage aa:io
execute if score .ran local matches 1 run return 5

execute if score .dist_nw local = .best local run scoreboard players operation .x io -= .step local
execute if score .dist_nw local = .best local run scoreboard players operation .z io -= .step local
$execute store success score .ran local if score .dist_nw local = .best local positioned ~-$(step) ~ ~-$(step) run function aa:util/locate/find with storage aa:io
execute if score .ran local matches 1 run return 6

execute if score .dist_n local = .best local run scoreboard players operation .z io -= .step local
$execute store success score .ran local if score .dist_n local = .best local positioned ~ ~ ~-$(step) run function aa:util/locate/find with storage aa:io
execute if score .ran local matches 1 run return 7

execute if score .dist_ne local = .best local run scoreboard players operation .x io += .step local
execute if score .dist_ne local = .best local run scoreboard players operation .z io -= .step local
$execute store success score .ran local if score .dist_ne local = .best local positioned ~$(step) ~ ~-$(step) run function aa:util/locate/find with storage aa:io
execute if score .ran local matches 1 run return 8

return fail
