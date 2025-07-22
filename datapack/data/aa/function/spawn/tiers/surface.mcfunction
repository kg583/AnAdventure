# Culling
execute store result score .cull rand run random value 0..9
execute if score .cull rand >= .difficulty local unless entity @p[distance=..32] run function aa:util/cull

# Moon weirdness
execute store result score .weird rand run random value 0..9
execute if score #moon const matches 1 if score .weird rand matches 8 run function aa:spawn/tiers/moon

tag @s add aa.tiered
