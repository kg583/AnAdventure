effect give @a[distance=..128] minecraft:health_boost 20 1

scoreboard players operation @s aa.cooldown.goat_horn = #gametime aa.const
scoreboard players add @s aa.cooldown.goat_horn 4799
schedule function aa:enchantment/beckon/reset 4799t append
