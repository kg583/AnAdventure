# Calculate real difficulty
function aa:spawn/difficulty/difficulty

# Set difficulty tiers
execute as @e[tag=!aa.tiered,tag=!smithed.entity,type=#aa:baddies] at @s run function aa:spawn/difficulty/set_tier

# Daytime creeper cull
execute if score #daytime aa.const matches 2000..12000 as @e[tag=!smithed.entity,type=minecraft:creeper] at @s positioned ~ ~1 ~ if predicate c:can_see_sky unless predicate {condition:"minecraft:location_check",predicate:{biomes:"#c:is_dark_forest"}} unless data entity @s CustomName run function aa:spawn/difficulty/aw_man

# Misc
execute as @e[tag=!aa.tiered,tag=!smithed.entity,type=minecraft:elder_guardian] at @s run function aa:spawn/difficulty/elder_guardian

execute as @e[tag=!aa.tiered,tag=!smithed.entity,type=minecraft:drowned] at @s run function aa:spawn/difficulty/drowned

execute as @e[tag=!smithed.entity,type=minecraft:hoglin] run attribute @s minecraft:max_health base set 0.8

execute as @e[tag=!smithed.entity,type=minecraft:warden] run attribute @s minecraft:attack_damage base set 25 

execute as @e[tag=!smithed.entity,type=minecraft:blaze] run attribute @s minecraft:follow_range base set 24
