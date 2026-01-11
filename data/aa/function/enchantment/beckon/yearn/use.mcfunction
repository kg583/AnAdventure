summon minecraft:marker ~ ~ ~ {Tags:["aa.spawn.yearn_iron_golem","smithed.entity","smithed.strict"]}
summon minecraft:marker ~ ~ ~ {Tags:["aa.spawn.yearn_iron_golem","smithed.entity","smithed.strict"]}
spreadplayers ~ ~ 2 8 true @e[tag=aa.spawn.yearn_iron_golem,type=minecraft:marker]
execute at @e[tag=aa.spawn.yearn_iron_golem,type=minecraft:marker] run summon minecraft:iron_golem
kill @e[tag=aa.spawn.yearn_iron_golem,type=minecraft:marker]

scoreboard players operation @s aa.cooldown.goat_horn = #gametime aa.const
scoreboard players add @s aa.cooldown.goat_horn 5999
schedule function aa:enchantment/beckon/reset 5999t append
