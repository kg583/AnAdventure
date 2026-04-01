tag @s add aa.raid.return

# Effects
effect give @s minecraft:nausea 11 0 true
playsound minecraft:block.bell.resonate ambient @s

# Return marker
summon minecraft:marker ~ ~ ~ {Tags:["aa.raid.return","smithed.entity","smithed.strict"]}
data modify entity @n[tag=aa.raid.center,type=minecraft:marker] Rotation set from entity @s Rotation

schedule function aa:mechanics/raid/trigger 48t
