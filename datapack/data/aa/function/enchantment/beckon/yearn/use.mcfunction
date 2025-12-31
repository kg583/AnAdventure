summon minecraft:marker ~ ~ ~ {Tags:["aa.spawn.yearn_iron_golem","smithed.entity","smithed.strict"]}
summon minecraft:marker ~ ~ ~ {Tags:["aa.spawn.yearn_iron_golem","smithed.entity","smithed.strict"]}
spreadplayers ~ ~ 2 8 true @e[type=minecraft:marker,tag=aa.spawn.yearn_iron_golem,distance=0..]
execute at @e[type=minecraft:marker,tag=aa.spawn.yearn_iron_golem,distance=0..] run summon minecraft:iron_golem
kill @e[type=minecraft:marker,tag=aa.spawn.yearn_iron_golem,distance=0..]

scoreboard players operation @s aa.cooldown.goat_horn = #gametime aa.const
scoreboard players add @s aa.cooldown.goat_horn 5999
schedule function aa:enchantment/beckon/reset 5999t append
