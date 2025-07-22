# Difficulty scaling
scoreboard players operation .difficulty local = #difficulty const
scoreboard players add .difficulty local 4

# Moon scaling
execute if score #moon const matches 0..2 run scoreboard players add .difficulty local 2
execute if score #moon const matches 1 run scoreboard players add .difficulty local 1
execute if score #moon const matches 4..6 run scoreboard players remove .difficulty local 1
execute if score #moon const matches 5 run scoreboard players remove .difficulty local 1

# Surface mobs
execute as @e[type=#aa:baddies,tag=!aa.tiered] at @s if entity @s[y=63,dy=256] unless predicate minecraft:biome/is_dark_forest run function aa:spawn/tiers/surface

# Set tiers
execute as @e[type=minecraft:creeper,tag=!aa.tiered] at @s run function aa:spawn/tiers/creeper/set_tier
execute as @e[type=minecraft:skeleton,tag=!aa.tiered] at @s run function aa:spawn/tiers/skeleton/set_tier
execute as @e[type=minecraft:spider,tag=!aa.tiered] at @s run function aa:spawn/tiers/spider/set_tier
execute as @e[type=minecraft:zombie,tag=!aa.tiered] at @s run function aa:spawn/tiers/zombie/set_tier

# Daytime creeper cull
execute if score #daytime const matches 2000..12000 as @e[type=minecraft:creeper] at @s if predicate minecraft:can_see_sky unless predicate minecraft:biome/is_dark_forest unless data entity @s CustomName run function aa:spawn/tiers/aw_man

# Misc
execute as @e[type=minecraft:drowned] if predicate aa:spawn/holding_trident run function aa:util/cull
execute as @e[type=minecraft:drowned] run attribute @s minecraft:water_movement_efficiency base set 0.3

execute as @e[type=minecraft:hoglin] run attribute @s minecraft:max_health base set 0.8
