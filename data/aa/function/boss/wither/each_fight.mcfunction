execute store result score #health aa.local run data get entity @s Health

# Anti cheese
execute if entity @s[tag=aa.wither.exploded] run function aa:boss/wither/anti_cheese

# Initial explosion
execute store result score #invul aa.local run data get entity @s Invul
execute if entity @s[tag=!aa.wither.exploded] if score #invul aa.local matches 0 run function aa:boss/wither/explode

# Skeleton reinforcements
execute if score @s aa.cooldown matches 3 if score #health aa.local matches ..550 run function aa:boss/wither/reinforcements/call
execute if score @s aa.cooldown matches 2 if score #health aa.local matches ..350 run function aa:boss/wither/reinforcements/call
execute if score @s aa.cooldown matches 1 if score #health aa.local matches ..150 run function aa:boss/wither/reinforcements/call

# Block collapse
execute if entity @s[tag=aa.wither.exploded] run summon minecraft:marker ~ ~ ~ {Tags:["aa.wither.collapse","smithed.entity","smithed.strict"]}
execute as @e[tag=aa.wither.collapse,type=minecraft:marker] at @s align xyz positioned ~0.5 ~ ~0.5 run function aa:boss/wither/collapse

schedule function aa:boss/wither/fight 5t replace
