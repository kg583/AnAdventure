scoreboard players set .dist aa.io 0
scoreboard players set .max_dist aa.io 1920
scoreboard players set .during aa.local 0

execute store result score .max_dist aa.io run data get storage aa:io max_distance
execute at @s anchored eyes positioned ^ ^ ^ anchored feet run function aa:util/raycast/step with storage aa:io
