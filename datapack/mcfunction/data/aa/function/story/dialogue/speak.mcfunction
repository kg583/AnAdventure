# Speak next line
function aa:story/dialogue/speak_line with entity @s data.lines[0]
execute store result score @e[tag=aa.dynamic.speaking,distance=..1,limit=1,sort=nearest] cooldown run data get entity @s data.lines[0].cooldown

# Pop spoken line
data remove entity @s data.lines[0]
execute unless data entity @s data.lines[0] as @e[tag=aa.dynamic.speaking,distance=..1,limit=1,sort=nearest] run function aa:story/dialogue/unlock_speaker
