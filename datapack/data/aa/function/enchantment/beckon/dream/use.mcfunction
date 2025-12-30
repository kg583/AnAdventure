effect give @e[type=#aa:baddies,distance=..128] minecraft:glowing 20

scoreboard players operation @s aa.cooldown.goat_horn = #gametime aa.const
scoreboard players add @s aa.cooldown.goat_horn 4799
schedule function aa:enchantment/beckon/reset 4799t append
