# Calculate real difficulty
function aa:spawn/difficulty/difficulty

# Set difficulty tiers
execute as @e[type=#aa:baddies,tag=!aa.tiered,tag=!smithed.entity] at @s run function aa:spawn/difficulty/set_tier

# Daytime creeper cull
execute if score #daytime aa.const matches 2000..12000 as @e[type=minecraft:creeper,tag=!smithed.entity] at @s positioned ~ ~1 ~ if predicate c:can_see_sky unless predicate {condition:"minecraft:location_check",predicate:{biomes:"#c:is_dark_forest"}} unless data entity @s CustomName run function aa:spawn/difficulty/aw_man

# Misc
execute as @e[type=minecraft:elder_guardian,tag=!aa.tiered,tag=!smithed.entity] at @s run function aa:spawn/difficulty/elder_guardian

execute as @e[type=minecraft:drowned,tag=!aa.tiered,tag=!smithed.entity] at @s run function aa:spawn/difficulty/drowned

execute as @e[type=minecraft:hoglin,tag=!smithed.entity] run attribute @s minecraft:max_health base set 0.8

execute as @e[type=minecraft:warden,tag=!smithed.entity] run attribute @s minecraft:attack_damage base set 25 

execute as @e[type=minecraft:blaze,tag=!smithed.entity] run attribute @s minecraft:follow_range base set 24
