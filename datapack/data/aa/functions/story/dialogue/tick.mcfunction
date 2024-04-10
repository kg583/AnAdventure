# Lock speakers
data modify storage aa:stdin Pos set value {}
execute as @e[type=minecraft:marker,tag=aa.static.talking,distance=..1,limit=1,sort=nearest] run function aa:story/dialogue/face_player_stdin
function aa:story/dialogue/face_player with storage aa:stdin Pos

# Unlock conditions
execute if block ~ ~-1 ~ minecraft:air run function aa:story/dialogue/unlock_speaker
execute unless block ~ ~ ~ minecraft:air run function aa:story/dialogue/unlock_speaker
execute if entity @s[nbt={OnGround:0b}] run function aa:story/dialogue/unlock_speaker
execute if entity @s[nbt=!{HurtTime:0s}] run function aa:story/dialogue/unlock_speaker
