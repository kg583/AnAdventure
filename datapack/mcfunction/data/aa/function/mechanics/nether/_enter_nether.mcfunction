$title @s title {"text":"Chapter $(Chapter)","bold":true}
title @s subtitle {"text":"The Nether","color":"dark_red"}
stopsound @s
playsound minecraft:music.nether music @s

data modify storage aa:progress Milestone.Nether set value true
