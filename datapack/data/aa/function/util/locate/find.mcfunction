# Determine current distance
$execute store result score .dist aa.local run locate $(category) $(type)

# Are we there yet?
execute if score .dist aa.local matches 0 run return 1

# Step closer
scoreboard players operation .step aa.local = .dist aa.local
scoreboard players set .factor aa.local 4
scoreboard players operation .step aa.local /= .factor aa.local
scoreboard players add .step aa.local 1
execute store result storage aa:io step int 1 run scoreboard players get .step aa.local

function aa:util/locate/orient with storage aa:io
function aa:util/locate/step with storage aa:io
