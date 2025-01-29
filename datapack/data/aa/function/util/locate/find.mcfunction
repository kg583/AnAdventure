# Determine current distance
$execute store result score .dist local run locate $(category) $(type)

# Are we there yet?
execute if score .dist local matches 0 run return 1

# Step closer
scoreboard players operation .step local = .dist local
scoreboard players set .factor local 4
scoreboard players operation .step local /= .factor local
scoreboard players add .step local 1
execute store result storage aa:io step int 1 run scoreboard players get .step local

function aa:util/locate/orient with storage aa:io
function aa:util/locate/step with storage aa:io
