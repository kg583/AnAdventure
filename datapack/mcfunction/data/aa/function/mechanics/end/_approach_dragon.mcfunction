$title @s title {"text":"Chapter $(Chapter)","bold":true}
title @s subtitle {"text":"The Dragon","color":"dark_gray"}
stopsound @s
playsound minecraft:music.boss music @s

data modify storage aa:progress Milestone.Dragon set value true
