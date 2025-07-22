# Speak next line
function aa:story/dialogue/speak_line with entity @s data.lines[0]
execute store result score @n[tag=aa.talking,distance=..1] aa.cooldown run data get entity @s data.lines[0].cooldown

# Pop spoken line
data remove entity @s data.lines[0]
execute unless data entity @s data.lines[0] as @n[tag=aa.talking,distance=..1] run function aa:story/dialogue/unlock_speaker
