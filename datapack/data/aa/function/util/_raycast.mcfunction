# Increment distance (in centiblocks)
scoreboard players add .dist aa.io 1

# Callback during cast
execute store result storage aa:io dist int 0.1 run scoreboard players get .dist aa.io
execute store result storage aa:io spyglass float 0.0085 run scoreboard players get .dist aa.io
$function $(during) with storage aa:io

# Callback after cast
execute if block ~ ~ ~ #aa:raycast_transparent positioned ~ ~-0.5 ~ unless entity @n[type=!minecraft:player,distance=..1.5] positioned ~ ~0.5 ~ positioned ^ ^ ^0.1 run return run function aa:util/_raycast with storage aa:io
$function $(after) with storage aa:io
