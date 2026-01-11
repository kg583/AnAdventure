# Culling
execute store result score #cull aa.rand run random value 0..9
execute if score #cull aa.rand > #difficulty aa.local unless entity @p[distance=..16] run return run function aa:util/cull

# Moon weirdness
execute store result score #weird aa.rand run random value 0..16
execute if score #moon aa.const matches 1 if score #day aa.const matches 7.. if score #weird aa.rand matches 5 run function aa:spawn/difficulty/moon
