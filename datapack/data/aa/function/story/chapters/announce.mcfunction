# Announce
execute as @a run function aa:story/chapters/_announce with storage aa:story progress
$execute as @a at @s run function aa:story/chapters/announcements/$(chapter)

# Set progress
$data modify storage aa:story progress.$(chapter) set value true

# Increment chapter
execute store result score .chapter local run data get storage aa:story progress.chapter
scoreboard players add .chapter local 1
execute store result storage aa:story progress.chapter int 1 run scoreboard players get .chapter local
