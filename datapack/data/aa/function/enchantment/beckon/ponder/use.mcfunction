effect give @a[distance=..128] minecraft:speed 20
effect give @a[distance=..128] minecraft:strength 5
effect give @a[distance=..128] minecraft:regeneration 5

scoreboard players operation @s aa.cooldown.goat_horn = #gametime aa.const
scoreboard players add @s aa.cooldown.goat_horn 2399
schedule function aa:enchantment/beckon/reset 2399t append