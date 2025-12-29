tag @s add aa.raid.return
summon minecraft:marker ~ ~ ~ {Tags:["aa.raid.return","smithed.entity","smithed.strict"]}

effect give @s minecraft:bad_omen
effect give @s minecraft:blindness 1 0 true
tp @s @n[type=minecraft:marker,tag=aa.raid.center]
forceload add ~ ~

schedule function aa:mechanics/raid/return 1t
