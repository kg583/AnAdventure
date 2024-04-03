# Dimension ticks
execute as @a at @s if dimension minecraft:overworld run function aa:spawn/overworld/tick
execute as @a at @s if dimension minecraft:the_nether run function aa:spawn/nether/tick
execute as @a at @s if dimension minecraft:the_end run function aa:spawn/end/tick
