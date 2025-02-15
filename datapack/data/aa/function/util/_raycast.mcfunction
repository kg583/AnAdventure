# Increment distance (in centiblocks)
scoreboard players add .dist io 1

# Callback during cast
execute store result storage aa:io dist int 0.1 run scoreboard players get .dist io
execute store result storage aa:io spyglass float 0.017 run scoreboard players get .dist io
$function aa:$(during) with storage aa:io

# Callback after cast
execute if block ~ ~ ~ #aa:raycast_transparent positioned ~ ~-0.5 ~ unless entity @n[type=!minecraft:player,distance=..1.5] positioned ~ ~0.5 ~ positioned ^ ^ ^0.1 run return run function aa:util/_raycast with storage aa:io
$function aa:$(after) with storage aa:io
