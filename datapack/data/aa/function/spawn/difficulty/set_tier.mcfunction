# Surface mobs
execute if entity @s[y=63,dy=256] unless predicate c:biome/is_dark_forest run function aa:spawn/difficulty/surface

# Cave mobs
execute if entity @s[y=-64,dy=191] if predicate c:biome/is_cave unless predicate c:can_see_sky run function aa:spawn/difficulty/cave

# 0 <-> 30 == -10% <-> +20%
scoreboard players operation .percent aa.local = .difficulty aa.local
scoreboard players remove .percent aa.local 10

# General follow range
attribute @s minecraft:follow_range modifier add aa:difficulty.follow_range 0.0 add_multiplied_base
execute store result entity @s attributes[{id:"minecraft:follow_range"}].modifiers[-1].amount double 0.01 run scoreboard players get .percent aa.local

# General health
attribute @s minecraft:max_health modifier add aa:difficulty.max_health 0.0 add_multiplied_base
execute store result entity @s attributes[{id:"minecraft:max_health"}].modifiers[-1].amount double 0.03 run scoreboard players get .percent aa.local

# General armor
attribute @s minecraft:armor modifier add aa:difficulty.armor 0.0 add_multiplied_base
execute store result entity @s attributes[{id:"minecraft:armor"}].modifiers[-1].amount double 0.005 run scoreboard players get .percent aa.local

# Mob-specific tiers
execute if entity @s[type=minecraft:creeper] run function aa:spawn/difficulty/creeper/set_tier
execute if entity @s[type=minecraft:skeleton] run function aa:spawn/difficulty/skeleton/set_tier
execute if entity @s[type=minecraft:spider] run function aa:spawn/difficulty/spider/set_tier
execute if entity @s[type=minecraft:zombie] run function aa:spawn/difficulty/zombie/set_tier

tag @s add aa.tiered
