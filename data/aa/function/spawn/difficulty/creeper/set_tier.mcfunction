# Movement speed scaling
scoreboard players operation #speed aa.local = #difficulty aa.local
scoreboard players remove #speed aa.local 10

attribute @s minecraft:movement_speed modifier add aa:difficulty.movement_speed 0.0 add_multiplied_base
execute store result entity @s attributes[{id:"minecraft:movement_speed"}].modifiers[-1].amount double 0.01 run scoreboard players get #speed aa.local


# Elevation scaling
execute if entity @s[y=32,dy=95] unless predicate c:can_see_sky run return run function aa:spawn/difficulty/creeper/1
execute if entity @s[y=0,dy=31] unless predicate c:can_see_sky run return run function aa:spawn/difficulty/creeper/2
execute if entity @s[y=-64,dy=63] unless predicate c:can_see_sky run return run function aa:spawn/difficulty/creeper/3
