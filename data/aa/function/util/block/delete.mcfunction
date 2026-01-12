execute if entity @e[tag=smithed.block,distance=..0.8] run return fail
setblock ~ ~ ~ minecraft:air replace
kill @n[distance=..0.8,type=minecraft:block_display]
