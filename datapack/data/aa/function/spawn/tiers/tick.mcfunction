# Tier 0: surface
execute as @e[type=#aa:baddies,tag=!aa.tiered] at @s if entity @s[y=63,dy=256] unless predicate minecraft:biome/is_dark_forest run function aa:spawn/tiers/0

# Tier 1: Y = 32 to surface
execute as @e[type=minecraft:creeper,tag=!aa.tiered] at @s if entity @s[y=32,dy=96] unless predicate minecraft:can_see_sky run function aa:spawn/tiers/1/creeper
execute as @e[type=minecraft:skeleton,tag=!aa.tiered] at @s if entity @s[y=32,dy=96] unless predicate minecraft:can_see_sky run function aa:spawn/tiers/1/skeleton
execute as @e[type=minecraft:spider,tag=!aa.tiered] at @s if entity @s[y=32,dy=96] unless predicate minecraft:can_see_sky run function aa:spawn/tiers/1/spider
execute as @e[type=minecraft:zombie,tag=!aa.tiered] at @s if entity @s[y=32,dy=96] unless predicate minecraft:can_see_sky run function aa:spawn/tiers/1/zombie

# Tier 2: Y = 0 to Y = 31
execute as @e[type=minecraft:creeper,tag=!aa.tiered] at @s if entity @s[y=0,dy=31] unless predicate minecraft:can_see_sky run function aa:spawn/tiers/2/creeper
execute as @e[type=minecraft:skeleton,tag=!aa.tiered] at @s if entity @s[y=0,dy=31] unless predicate minecraft:can_see_sky run function aa:spawn/tiers/2/skeleton
execute as @e[type=minecraft:spider,tag=!aa.tiered] at @s if entity @s[y=0,dy=31] unless predicate minecraft:can_see_sky run function aa:spawn/tiers/2/spider
execute as @e[type=minecraft:zombie,tag=!aa.tiered] at @s if entity @s[y=0,dy=31] unless predicate minecraft:can_see_sky run function aa:spawn/tiers/2/zombie

# Tier 4: Y = -64 to Y = -1
execute as @e[type=minecraft:creeper,tag=!aa.tiered] at @s if entity @s[y=-64,dy=63] unless predicate minecraft:can_see_sky run function aa:spawn/tiers/3/creeper
execute as @e[type=minecraft:skeleton,tag=!aa.tiered] at @s if entity @s[y=-64,dy=63] unless predicate minecraft:can_see_sky run function aa:spawn/tiers/3/skeleton
execute as @e[type=minecraft:spider,tag=!aa.tiered] at @s if entity @s[y=-64,dy=63] unless predicate minecraft:can_see_sky run function aa:spawn/tiers/3/spider
execute as @e[type=minecraft:zombie,tag=!aa.tiered] at @s if entity @s[y=-64,dy=63] unless predicate minecraft:can_see_sky run function aa:spawn/tiers/3/zombie

# Misc
execute as @e[type=minecraft:drowned] run attribute @s minecraft:water_movement_efficiency base set 0.3

execute as @e[type=minecraft:hoglin] run attribute @s minecraft:max_health base set 0.8

execute as @e[tag=aa.spiderling] run data modify entity @s Passengers set value []
tag @e remove aa.spiderling
