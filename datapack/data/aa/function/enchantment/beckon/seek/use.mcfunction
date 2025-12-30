effect give @a[distance=..256] minecraft:bad_omen 60 2

scoreboard players operation @s aa.cooldown.goat_horn = #gametime aa.const
scoreboard players add @s aa.cooldown.goat_horn 5999
schedule function aa:enchantment/beckon/reset 5999t append
