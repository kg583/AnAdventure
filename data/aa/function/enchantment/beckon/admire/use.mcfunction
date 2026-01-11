execute positioned ^ ^ ^100 positioned over motion_blocking run summon minecraft:goat ~ ~ ~ {CustomName:"THE GOAT",CustomNameVisible:1b,Tags:["aa.the_goat"]}
execute as @n[tag=aa.the_goat,tag=!aa.tiered,type=minecraft:goat] run function aa:util/health {health:160}
attribute @n[tag=aa.the_goat,tag=!aa.tiered,type=minecraft:goat] minecraft:scale base set 8
tag @n[tag=aa.the_goat,type=minecraft:goat] add aa.tiered

scoreboard players operation @s aa.cooldown.goat_horn = #gametime aa.const
scoreboard players add @s aa.cooldown.goat_horn 4799
schedule function aa:enchantment/beckon/reset 4799t append
