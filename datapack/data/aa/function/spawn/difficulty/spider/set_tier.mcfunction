# Potion prevention
execute if score #difficulty aa.local matches ..8 run effect clear @s


# Spiderlings in mineshafts or to prevent suffocation
execute if predicate c:structure/mineshaft run return run function aa:spawn/difficulty/spiderling/set_tier

execute unless predicate c:can_see_sky unless block ~1 ~ ~ #minecraft:air run return run function aa:spawn/difficulty/spiderling/set_tier
execute unless predicate c:can_see_sky unless block ~-1 ~ ~ #minecraft:air run return run function aa:spawn/difficulty/spiderling/set_tier
execute unless predicate c:can_see_sky unless block ~ ~ ~1 #minecraft:air run return run function aa:spawn/difficulty/spiderling/set_tier
execute unless predicate c:can_see_sky unless block ~ ~ ~-1 #minecraft:air run return run function aa:spawn/difficulty/spiderling/set_tier


# Elevation scaling
execute if entity @s[y=32,dy=95] unless predicate c:can_see_sky run return run function aa:spawn/difficulty/spider/1
execute if entity @s[y=0,dy=31] unless predicate c:can_see_sky run return run function aa:spawn/difficulty/spider/2
execute if entity @s[y=-64,dy=63] unless predicate c:can_see_sky run return run function aa:spawn/difficulty/spider/3
