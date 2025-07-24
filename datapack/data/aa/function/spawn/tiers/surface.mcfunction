# Culling
execute store result score .cull aa.rand run random value 0..9
execute if score .cull aa.rand >= .difficulty aa.local unless entity @p[distance=..32] run function aa:util/cull

# Moon weirdness
execute store result score .weird aa.rand run random value 0..11
execute if score #moon aa.const matches 1 if score .weird aa.rand matches 11 run function aa:spawn/tiers/moon

tag @s add aa.tiered
