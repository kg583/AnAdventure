# Difficulty scaling
execute store result score .cull rand run random value 0..9
execute store result score .difficulty local run difficulty
scoreboard players add .difficulty local 4

# Moon scaling
execute store result score .moon local run time query day
scoreboard players add .moon local 1
scoreboard players operation .moon local %= #8 const

execute if score .moon local matches 0..2 run scoreboard players add .difficulty local 2
execute if score .moon local matches 1 run scoreboard players add .difficulty local 1
execute if score .moon local matches 4..6 run scoreboard players remove .difficulty local 1
execute if score .moon local matches 5 run scoreboard players remove .difficulty local 1

# Cull
execute if score .cull rand >= .difficulty local unless entity @p[distance=..32] run function aa:util/cull

# Daytime creeper cull
execute store result score .daytime local run time query daytime
execute if entity @s[type=minecraft:creeper] if score .daytime local matches 3000..12000 run function aa:spawn/tiers/aw_man

tag @s add aa.tiered
