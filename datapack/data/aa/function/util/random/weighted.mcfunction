# Make random selection
scoreboard players set #index aa.local 0
execute store result score #percent aa.rand run random value 1..100
execute store result score #length aa.local run data get storage aa:io weights

# Find it
data modify storage aa:io index set value 0
return run function aa:util/random/_weighted with storage aa:io
