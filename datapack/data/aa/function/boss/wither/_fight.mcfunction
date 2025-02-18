execute store result score .health local run data get entity @s Health

# Anti cheese
execute unless predicate aa:boss/wither/invul if block ~ ~4 ~ #minecraft:wither_immune run tp @s ~ ~-1 ~
execute unless predicate aa:boss/wither/invul if block ~ ~3 ~ #minecraft:wither_immune run tp @s ~ ~-1 ~
execute unless predicate aa:boss/wither/invul if block ~ ~2 ~ #minecraft:wither_immune run tp @s ~ ~-1 ~
execute unless predicate aa:boss/wither/invul if block ~ ~1 ~ #minecraft:wither_immune run tp @s ~ ~-1 ~
execute unless predicate aa:boss/wither/invul if block ~ ~ ~ #minecraft:wither_immune run tp @s ~ ~-1 ~

# Initial explosion
execute if entity @s[tag=!aa.wither.exploded] unless predicate aa:boss/wither/invul run function aa:boss/wither/explode

# Skeleton reinforcements
execute if score @s local matches 6 if score .health local matches ..550 run function aa:boss/wither/reinforcements
execute if score @s local matches 5 if score .health local matches ..450 run function aa:boss/wither/reinforcements
execute if score @s local matches 4 if score .health local matches ..350 run function aa:boss/wither/reinforcements
execute if score @s local matches 3 if score .health local matches ..250 run function aa:boss/wither/reinforcements
execute if score @s local matches 2 if score .health local matches ..150 run function aa:boss/wither/reinforcements

schedule function aa:boss/wither/fight 5t replace
