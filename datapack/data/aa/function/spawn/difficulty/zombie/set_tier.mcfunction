# Reinforcements scaling
attribute @s minecraft:spawn_reinforcements modifier add aa:difficulty.spawn_reinforcements 0.0 add_value
execute store result entity @s attributes[{id:"minecraft:spawn_reinforcements"}].modifiers[-1].amount double 0.01 run scoreboard players get #percent aa.local

# Knockback scaling
attribute @s minecraft:knockback_resistance modifier add aa:difficulty.knockback_resistance 0.0 add_multiplied_base
execute store result entity @s attributes[{id:"minecraft:knockback_resistance"}].modifiers[-1].amount double 0.01 run scoreboard players get #difficulty aa.local


# Elevation scaling
execute if entity @s[y=32,dy=95] unless predicate c:can_see_sky run return run function aa:spawn/difficulty/zombie/1
execute if entity @s[y=0,dy=31] unless predicate c:can_see_sky run return run function aa:spawn/difficulty/zombie/2
execute if entity @s[y=-64,dy=63] unless predicate c:can_see_sky run return run function aa:spawn/difficulty/zombie/3
