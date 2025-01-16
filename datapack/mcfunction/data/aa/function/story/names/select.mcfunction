# Get name dictionary
$data modify storage aa:io list set from storage aa:storage names.$(type)

# Select element based on UUID
execute store result score .length local run data get storage aa:io list
execute store result score .uuid local run data get entity @s UUID[3]
scoreboard players operation .uuid local %= .length local
execute store result storage aa:io index int 1 run scoreboard players get .uuid local
function aa:util/index with storage aa:io

# Set name
data modify entity @s CustomName set from storage aa:io element
