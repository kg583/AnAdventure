execute store result score #health aa.local run data get entity @s Health

# Anti cheese
execute unless data entity @s {Invul:1} run function aa:boss/wither/anti_cheese

# Initial explosion
execute if entity @s[tag=!aa.wither.exploded] unless data entity @s {Invul:1} run function aa:boss/wither/explode

# Skeleton reinforcements
execute if score @s aa.cooldown matches 3 if score #health aa.local matches ..550 run function aa:boss/wither/reinforcements/call
execute if score @s aa.cooldown matches 2 if score #health aa.local matches ..350 run function aa:boss/wither/reinforcements/call
execute if score @s aa.cooldown matches 1 if score #health aa.local matches ..150 run function aa:boss/wither/reinforcements/call

schedule function aa:boss/wither/fight 5t replace
