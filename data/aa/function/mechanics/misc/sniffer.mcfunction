# Particles
execute unless predicate c:entity/is_baby if data entity @s data.aa.relic.totem_of_antigravity run particle minecraft:entity_effect{color:-720057621} ^ ^0.5 ^2.4 0.5 0 0.5 0.02 1
execute unless predicate c:entity/is_baby if data entity @s data.aa.relic.totem_of_shrinking run particle minecraft:entity_effect{color:-713012465} ^ ^0.5 ^2.4 0.5 0 0.5 0.02 1
execute unless predicate c:entity/is_baby if data entity @s data.aa.relic.totem_of_reaching run particle minecraft:entity_effect{color:-708417551} ^ ^0.5 ^2.4 0.5 0 0.5 0.02 1

execute if predicate c:entity/is_baby if data entity @s data.aa.relic.totem_of_antigravity run particle minecraft:entity_effect{color:-720057621} ^ ^0.4 ^1.7 0.3 0 0.3 0.02 1
execute if predicate c:entity/is_baby if data entity @s data.aa.relic.totem_of_shrinking run particle minecraft:entity_effect{color:-713012465} ^ ^0.4 ^1.7 0.3 0 0.3 0.02 1
execute if predicate c:entity/is_baby if data entity @s data.aa.relic.totem_of_reaching run particle minecraft:entity_effect{color:-708417551} ^ ^0.4 ^1.7 0.3 0 0.3 0.02 1

# Set relic type
execute if data entity @s data.aa.relic run return fail
execute store result score #relic aa.local run random value 1..3

execute if score #relic aa.local matches 1 run data merge entity @s {data:{aa:{relic:{totem_of_antigravity:1b}}}}
execute if score #relic aa.local matches 2 run data merge entity @s {data:{aa:{relic:{totem_of_shrinking:1b}}}}
execute if score #relic aa.local matches 3 run data merge entity @s {data:{aa:{relic:{totem_of_reaching:1b}}}}
