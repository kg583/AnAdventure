execute summon minecraft:spider run tag @s add aa.spiderling
execute summon minecraft:spider run tag @s add aa.spiderling

execute if score #difficulty aa.local matches 10.. summon minecraft:spider run tag @s add aa.spiderling
execute if score #difficulty aa.local matches 20.. summon minecraft:spider run tag @s add aa.spiderling

# Elevation scaling
execute as @e[tag=aa.spiderling,distance=..2,type=minecraft:spider] unless predicate c:can_see_sky run function aa:spawn/difficulty/spiderling/each_set_tier

# Cleanup
tp @n[tag=aa.spiderling,distance=..2,type=minecraft:spider] ~0.1 ~ ~
tag @e[tag=aa.spiderling,distance=..2,type=minecraft:spider] add aa.tiered
tag @e[tag=aa.spiderling,distance=..2,type=minecraft:spider] remove aa.spiderling

function aa:util/cull
