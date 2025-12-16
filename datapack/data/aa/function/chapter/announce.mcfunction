# Announce
$execute as @a at @s run function aa:chapter/announcements/$(chapter) with storage aa:io
title @a title {translate:"text.aa.chapter.announce",with:[{storage:"aa:story",nbt:"progress.chapter"}],fallback:"Chapter %s",bold:true}

# Set progress
$data modify storage aa:story progress.$(chapter) set value true

# Increment chapter
execute store result score .chapter aa.local run data get storage aa:story progress.chapter
scoreboard players add .chapter aa.local 1
execute store result storage aa:story progress.chapter int 1 run scoreboard players get .chapter aa.local
