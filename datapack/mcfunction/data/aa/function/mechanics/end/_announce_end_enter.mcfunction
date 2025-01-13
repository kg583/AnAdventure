$title @s title {"text":"Chapter $(Chapter)","bold":true}
title @s subtitle {"text":"The End","color":"dark_purple"}
playsound minecraft:music.end music @s

data modify storage aa:progress Milestone.End set value true
