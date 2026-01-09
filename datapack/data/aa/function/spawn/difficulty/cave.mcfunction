# Culling
execute store result score #cull aa.rand run random value 0..11
execute if score #cull aa.rand > #difficulty aa.local unless entity @p[distance=..16] run return run function aa:util/cull

# Pickaxes
execute store result score #pickaxe aa.rand run random value 0..9
execute if entity @s[type=minecraft:zombie] if score #pickaxe aa.rand matches ..3 run function aa:spawn/difficulty/pickaxe
