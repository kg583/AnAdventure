execute positioned ^ ^ ^100 positioned over motion_blocking run summon minecraft:goat ~ ~ ~ {CustomName:"THE GOAT",CustomNameVisible:1b,Tags:["aa.the_goat"]}
attribute @n[type=minecraft:goat,tag=aa.the_goat,tag=!aa.tiered] minecraft:scale base set 8
attribute @n[type=minecraft:goat,tag=aa.the_goat,tag=!aa.tiered] minecraft:max_health base set 80
data modify entity @n[type=minecraft:goat,tag=aa.the_goat,tag=!aa.tiered] Health set value 80
tag @n[type=minecraft:goat,tag=aa.the_goat] add aa.tiered

scoreboard players operation @s aa.cooldown.goat_horn = #gametime aa.const
scoreboard players add @s aa.cooldown.goat_horn 4799
schedule function aa:enchantment/beckon/reset 4799t append
