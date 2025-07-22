execute summon minecraft:spider run tag @s add aa.spiderling
execute summon minecraft:spider run tag @s add aa.spiderling
execute summon minecraft:spider run tag @s add aa.spiderling

execute if score .difficulty aa.local matches 8.. summon minecraft:spider run tag @s add aa.spiderling

# Tiers
execute as @e[tag=aa.spiderling,distance=..2] at @s if entity @s[y=32,dy=95] unless predicate minecraft:can_see_sky run function aa:spawn/tiers/spiderling/1
execute as @e[tag=aa.spiderling,distance=..2] at @s if entity @s[y=0,dy=31] unless predicate minecraft:can_see_sky run function aa:spawn/tiers/spiderling/2
execute as @e[tag=aa.spiderling,distance=..2] at @s if entity @s[y=-64,dy=63] unless predicate minecraft:can_see_sky run function aa:spawn/tiers/spiderling/3

# Cleanup
tp @n[type=minecraft:spider,tag=aa.spiderling,distance=..2] ~0.1 ~ ~
execute as @e[type=minecraft:spider,tag=aa.spiderling,distance=..2] run data modify entity @s Passengers set value []
tag @e[type=minecraft:spider,tag=aa.spiderling,distance=..2] remove aa.spiderling

function aa:util/cull
