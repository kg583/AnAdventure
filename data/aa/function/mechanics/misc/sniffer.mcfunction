# Set relic type
execute unless score @s aa.relic matches 1.. store result score @s aa.relic run random value 1..3

# Particles
execute if score @s aa.relic matches 1 run particle minecraft:entity_effect{color:-720057621} ^ ^0.5 ^2.5 0.5 0 0.5 0.02 1
execute if score @s aa.relic matches 2 run particle minecraft:entity_effect{color:-713012465} ^ ^0.5 ^2.5 0.5 0 0.5 0.02 1
execute if score @s aa.relic matches 3 run particle minecraft:entity_effect{color:-708417551} ^ ^0.5 ^2.5 0.5 0 0.5 0.02 1
