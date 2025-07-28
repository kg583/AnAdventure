# Calculate real difficulty
function aa:spawn/difficulty/difficulty

# Set difficulty tiers
execute as @e[type=#aa:baddies,tag=!aa.tiered] at @s run function aa:spawn/difficulty/set_tier

# Daytime creeper cull
execute if score #daytime aa.const matches 2000..12000 as @e[type=minecraft:creeper] at @s positioned ~ ~1 ~ if predicate c:can_see_sky unless predicate c:biome/is_dark_forest unless data entity @s CustomName run function aa:spawn/difficulty/aw_man

# Misc
execute as @e[type=minecraft:drowned,predicate=aa:spawn/holding_trident] run function aa:util/cull
execute as @e[type=minecraft:drowned] run attribute @s minecraft:water_movement_efficiency base set 0.3

execute as @e[type=minecraft:hoglin] run attribute @s minecraft:max_health base set 0.8

execute as @e[type=minecraft:warden] run attribute @s minecraft:attack_damage base set 25 
