# Increment distance (in deciblocks)
scoreboard players add .dist aa.io 1

scoreboard players add .during aa.local 1
execute if score .during aa.local matches 10.. run scoreboard players set .during aa.local 0

# Callback during cast (only once per block)
execute if score .during aa.local matches 0 run function aa:util/raycast/during with storage aa:io

# Max distance reached
execute if score .dist aa.io > .max_distance aa.io run return fail

# Callback after cast
execute if block ~ ~ ~ #aa:raycast_transparent positioned ~ ~-0.5 ~ unless entity @n[type=!minecraft:player,distance=..1.5] positioned ~ ~0.5 ~ positioned ^ ^ ^0.1 run return run function aa:util/raycast/step with storage aa:io
$function $(after) with storage aa:io
