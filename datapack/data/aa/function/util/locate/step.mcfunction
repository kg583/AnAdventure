# Determine best direction
scoreboard players operation #best aa.local = #dist aa.local
scoreboard players operation #best aa.local < #dist_e aa.local
scoreboard players operation #best aa.local < #dist_se aa.local
scoreboard players operation #best aa.local < #dist_s aa.local
scoreboard players operation #best aa.local < #dist_sw aa.local
scoreboard players operation #best aa.local < #dist_w aa.local
scoreboard players operation #best aa.local < #dist_nw aa.local
scoreboard players operation #best aa.local < #dist_n aa.local
scoreboard players operation #best aa.local < #dist_ne aa.local

# Step in the best direction
execute if score #dist_e aa.local = #best aa.local run scoreboard players operation #x aa.io += #step aa.local
$execute if score #dist_e aa.local = #best aa.local positioned ~$(step) ~ ~ run return run function aa:util/locate/find with storage aa:io

execute if score #dist_se aa.local = #best aa.local run scoreboard players operation #x aa.io += #step aa.local
execute if score #dist_se aa.local = #best aa.local run scoreboard players operation #z aa.io += #step aa.local
$execute if score #dist_se aa.local = #best aa.local positioned ~$(step) ~ ~$(step) run return run function aa:util/locate/find with storage aa:io

execute if score #dist_s aa.local = #best aa.local run scoreboard players operation #z aa.io += #step aa.local
$execute if score #dist_s aa.local = #best aa.local positioned ~ ~ ~$(step) run return run function aa:util/locate/find with storage aa:io

execute if score #dist_sw aa.local = #best aa.local run scoreboard players operation #x aa.io -= #step aa.local
execute if score #dist_sw aa.local = #best aa.local run scoreboard players operation #z aa.io += #step aa.local
$execute if score #dist_sw aa.local = #best aa.local positioned ~-$(step) ~ ~$(step) run return run function aa:util/locate/find with storage aa:io

execute if score #dist_w aa.local = #best aa.local run scoreboard players operation #x aa.io -= #step aa.local
$execute if score #dist_w aa.local = #best aa.local positioned ~-$(step) ~ ~ run return run function aa:util/locate/find with storage aa:io

execute if score #dist_nw aa.local = #best aa.local run scoreboard players operation #x aa.io -= #step aa.local
execute if score #dist_nw aa.local = #best aa.local run scoreboard players operation #z aa.io -= #step aa.local
$execute if score #dist_nw aa.local = #best aa.local positioned ~-$(step) ~ ~-$(step) run return run function aa:util/locate/find with storage aa:io

execute if score #dist_n aa.local = #best aa.local run scoreboard players operation #z aa.io -= #step aa.local
$execute if score #dist_n aa.local = #best aa.local positioned ~ ~ ~-$(step) run return run function aa:util/locate/find with storage aa:io

execute if score #dist_ne aa.local = #best aa.local run scoreboard players operation #x aa.io += #step aa.local
execute if score #dist_ne aa.local = #best aa.local run scoreboard players operation #z aa.io -= #step aa.local
$execute if score #dist_ne aa.local = #best aa.local positioned ~$(step) ~ ~-$(step) run return run function aa:util/locate/find with storage aa:io

return fail
