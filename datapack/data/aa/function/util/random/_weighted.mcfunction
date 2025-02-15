# Is this the right percentile?
$execute store result score .weight local run data get storage aa:io weights[$(index)]
execute if score .percent rand <= .weight local run return run function aa:util/index with storage aa:io

# Increment the index and repeat
scoreboard players add .index local 1
execute if score .index local = .length local run return fail

execute store result storage aa:io index int 1 run scoreboard players get .index local
return run function aa:util/random/_weighted with storage aa:io
