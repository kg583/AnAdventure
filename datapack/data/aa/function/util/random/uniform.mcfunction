# Select an index uniformly randomly
execute store result score .length aa.local run data get storage aa:io list
data modify storage aa:io lower set value 0
execute store result storage aa:io upper int 1 run scoreboard players remove .length aa.local 1

execute store result storage aa:io index int 1 run function aa:util/random/range with storage aa:io
function aa:util/index with storage aa:io
