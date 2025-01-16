# Lock speakers
execute as @e[type=minecraft:marker,tag=aa.talk_lock,distance=..1,limit=1,sort=nearest] run function aa:util/coords
function aa:util/face_player with storage aa:io Pos

# Unlock conditions
execute if block ~ ~-1 ~ minecraft:air run function aa:story/dialogue/unlock_speaker
execute unless block ~ ~ ~ minecraft:air run function aa:story/dialogue/unlock_speaker
execute if entity @s[nbt={OnGround:0b}] run function aa:story/dialogue/unlock_speaker
execute if entity @s[nbt=!{HurtTime:0s}] run function aa:story/dialogue/unlock_speaker
