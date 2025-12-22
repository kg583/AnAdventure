execute if entity @e[tag=smithed.block,distance=..1] run return fail
setblock ~ ~ ~ minecraft:air replace
kill @n[type=minecraft:block_display,distance=..1]
