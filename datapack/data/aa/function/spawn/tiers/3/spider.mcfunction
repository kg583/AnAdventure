# Spiderlings in mineshafts or to prevent suffocation
execute if predicate minecraft:structure/mineshaft run return run function aa:spawn/tiers/3/spiderlings

execute unless block ~1 ~ ~ #minecraft:air run return run function aa:spawn/tiers/3/spiderlings
execute unless block ~-1 ~ ~ #minecraft:air run return run function aa:spawn/tiers/3/spiderlings
execute unless block ~ ~ ~1 #minecraft:air run return run function aa:spawn/tiers/3/spiderlings
execute unless block ~ ~ ~-1 #minecraft:air run return run function aa:spawn/tiers/3/spiderlings

# Stats
attribute @s minecraft:scale base set 1.5
attribute @s minecraft:max_health base set 22
data modify entity @s Health set value 22

attribute @s minecraft:movement_speed base set 0.4
attribute @s minecraft:follow_range base set 28

tag @s add aa.tiered
