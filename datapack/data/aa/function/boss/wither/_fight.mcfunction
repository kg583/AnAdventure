execute store result score .health aa.local run data get entity @s Health

# Anti cheese
execute unless predicate aa:boss/wither/invul if block ~ ~4 ~ #minecraft:wither_immune run tp @s ~ ~-1 ~
execute unless predicate aa:boss/wither/invul if block ~ ~3 ~ #minecraft:wither_immune run tp @s ~ ~-1 ~
execute unless predicate aa:boss/wither/invul if block ~ ~2 ~ #minecraft:wither_immune run tp @s ~ ~-1 ~
execute unless predicate aa:boss/wither/invul if block ~ ~1 ~ #minecraft:wither_immune run tp @s ~ ~-1 ~
execute unless predicate aa:boss/wither/invul if block ~ ~ ~ #minecraft:wither_immune run tp @s ~ ~-1 ~

# Initial explosion
execute if entity @s[tag=!aa.wither.exploded] unless predicate aa:boss/wither/invul run function aa:boss/wither/explode

# Skeleton reinforcements
execute if score @s aa.cooldown matches 6 if score .health aa.local matches ..520 run function aa:boss/wither/reinforcements
execute if score @s aa.cooldown matches 5 if score .health aa.local matches ..420 run function aa:boss/wither/reinforcements
execute if score @s aa.cooldown matches 4 if score .health aa.local matches ..320 run function aa:boss/wither/reinforcements
execute if score @s aa.cooldown matches 3 if score .health aa.local matches ..220 run function aa:boss/wither/reinforcements
execute if score @s aa.cooldown matches 2 if score .health aa.local matches ..120 run function aa:boss/wither/reinforcements

schedule function aa:boss/wither/fight 5t replace
