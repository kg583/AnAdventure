# Get name dictionary
$data modify storage aa:io list set from storage aa:storage names.$(type)
scoreboard players add .count aa.local 1

# Select random element
data modify storage aa:io lower set value 1
execute store result storage aa:io upper int 1 run data get storage aa:io list
execute store result score .index aa.rand run function aa:util/random/range with storage aa:io
scoreboard players remove .index aa.rand 1
execute store result storage aa:io index int 1 run scoreboard players get .index aa.rand
function aa:util/index with storage aa:io

# Set name or pick a new one
execute store result score .clash aa.local run function aa:story/names/check_name with storage aa:io
execute store result score .easter aa.rand run random value 1..20

execute if score .clash aa.local matches 0 run return run data modify entity @s CustomName set from storage aa:io element

execute if score .count aa.local matches 16.. if score .easter aa.rand matches 1 run return run data modify entity @s CustomName set value "Grumm"
execute if score .count aa.local matches 16.. if score .easter aa.rand matches 2 run return run data modify entity @s CustomName set value "Ricky Ticky Bobby Wobbins"
execute if score .count aa.local matches 16.. if score .easter aa.rand matches 3 run return run data modify entity @s CustomName set value "Dr. Trayaurus"
execute if score .count aa.local matches 16.. if score .easter aa.rand matches 4 run return run data modify entity @s CustomName set value "Testificate"
execute if score .count aa.local matches 16.. run return run data modify entity @s CustomName set from storage aa:io element

function aa:story/names/name_villager
