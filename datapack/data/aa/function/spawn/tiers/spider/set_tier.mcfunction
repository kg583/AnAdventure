# Spiderlings in mineshafts or to prevent suffocation
execute if predicate c:structure/mineshaft run return run function aa:spawn/tiers/spiderling/set_tier

execute unless block ~1 ~ ~ #minecraft:air run return run function aa:spawn/tiers/spiderling/set_tier
execute unless block ~-1 ~ ~ #minecraft:air run return run function aa:spawn/tiers/spiderling/set_tier
execute unless block ~ ~ ~1 #minecraft:air run return run function aa:spawn/tiers/spiderling/set_tier
execute unless block ~ ~ ~-1 #minecraft:air run return run function aa:spawn/tiers/spiderling/set_tier

# Tiers
execute if entity @s[y=32,dy=95] unless predicate c:can_see_sky run function aa:spawn/tiers/spider/1
execute if entity @s[y=0,dy=31] unless predicate c:can_see_sky run function aa:spawn/tiers/spider/2
execute if entity @s[y=-64,dy=63] unless predicate c:can_see_sky run function aa:spawn/tiers/spider/3
