execute store result score .health local run data get entity @s Health

# Anti cheese
execute if entity @s[nbt={Invul:0}] if block ~ ~4 ~ #minecraft:wither_immune run tp @s ~ ~-1 ~
execute if entity @s[nbt={Invul:0}] if block ~ ~3 ~ #minecraft:wither_immune run tp @s ~ ~-1 ~
execute if entity @s[nbt={Invul:0}] if block ~ ~2 ~ #minecraft:wither_immune run tp @s ~ ~-1 ~
execute if entity @s[nbt={Invul:0}] if block ~ ~1 ~ #minecraft:wither_immune run tp @s ~ ~-1 ~
execute if entity @s[nbt={Invul:0}] if block ~ ~ ~ #minecraft:wither_immune run tp @s ~ ~-1 ~

# Initial explosion
execute if entity @s[tag=!aa.wither.exploded,nbt={Invul:0}] run function aa:mechanics/wither/explode

# Skeleton reinforcements
execute if score @s local matches 6 if score .health local matches ..550 run function aa:mechanics/wither/reinforcements
execute if score @s local matches 5 if score .health local matches ..450 run function aa:mechanics/wither/reinforcements
execute if score @s local matches 4 if score .health local matches ..350 run function aa:mechanics/wither/reinforcements
execute if score @s local matches 3 if score .health local matches ..250 run function aa:mechanics/wither/reinforcements
execute if score @s local matches 2 if score .health local matches ..150 run function aa:mechanics/wither/reinforcements

schedule function aa:mechanics/wither/fight 5t replace
