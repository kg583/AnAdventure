summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:ender_eye",count:1},Motion:[0.01d,0.2d,-0.015d]}
summon minecraft:endermite ~ ~1 ~
effect give @n[type=minecraft:endermite] minecraft:slow_falling 5

particle minecraft:portal ~ ~ ~ 2 2 2 2 50

kill @s
