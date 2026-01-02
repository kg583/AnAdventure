# Attack damage scaling
attribute @s minecraft:attack_damage modifier add aa:difficulty.attack_damage 0.0 add_multiplied_base
execute store result entity @s attributes[{id:"minecraft:attack_damage"}].modifiers[-1].amount double 0.1 run scoreboard players get #percent aa.local


# Elevation scaling
execute if entity @s[y=32,dy=95] unless predicate c:can_see_sky run return run function aa:spawn/difficulty/skeleton/1
execute if entity @s[y=0,dy=31] unless predicate c:can_see_sky run return run function aa:spawn/difficulty/skeleton/2
execute if entity @s[y=-64,dy=63] unless predicate c:can_see_sky run return run function aa:spawn/difficulty/skeleton/3
