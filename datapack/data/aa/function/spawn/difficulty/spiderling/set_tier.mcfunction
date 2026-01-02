execute summon minecraft:spider run tag @s add aa.spiderling
execute summon minecraft:spider run tag @s add aa.spiderling

execute if score #difficulty aa.local matches 10.. summon minecraft:spider run tag @s add aa.spiderling
execute if score #difficulty aa.local matches 20.. summon minecraft:spider run tag @s add aa.spiderling

# Elevation scaling
execute as @e[tag=aa.spiderling,distance=..2] at @s if entity @s[y=32,dy=95] unless predicate c:can_see_sky run function aa:spawn/difficulty/spiderling/1
execute as @e[tag=aa.spiderling,distance=..2] at @s if entity @s[y=0,dy=31] unless predicate c:can_see_sky run function aa:spawn/difficulty/spiderling/2
execute as @e[tag=aa.spiderling,distance=..2] at @s if entity @s[y=-64,dy=63] unless predicate c:can_see_sky run function aa:spawn/difficulty/spiderling/3

# Cleanup
tp @n[type=minecraft:spider,tag=aa.spiderling,distance=..2] ~0.1 ~ ~
tag @e[type=minecraft:spider,tag=aa.spiderling,distance=..2] add aa.tiered
tag @e[type=minecraft:spider,tag=aa.spiderling,distance=..2] remove aa.spiderling

function aa:util/cull
