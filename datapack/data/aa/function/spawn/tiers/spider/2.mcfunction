# Spiderlings in mineshafts or to prevent suffocation
execute if predicate minecraft:structure/mineshaft run return run function aa:spawn/tiers/2/spiderlings

execute unless block ~1 ~ ~ #minecraft:air run return run function aa:spawn/tiers/2/spiderlings
execute unless block ~-1 ~ ~ #minecraft:air run return run function aa:spawn/tiers/2/spiderlings
execute unless block ~ ~ ~1 #minecraft:air run return run function aa:spawn/tiers/2/spiderlings
execute unless block ~ ~ ~-1 #minecraft:air run return run function aa:spawn/tiers/2/spiderlings

# Stats
attribute @s minecraft:scale base set 1.4
attribute @s minecraft:max_health base set 20
data modify entity @s Health set value 20

attribute @s minecraft:movement_speed base set 0.35
attribute @s minecraft:follow_range base set 24

tag @s add aa.tiered
