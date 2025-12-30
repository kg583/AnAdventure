effect clear @a[distance=..128] minecraft:blindness
effect clear @a[distance=..128] minecraft:darkness
effect clear @a[distance=..128] minecraft:hunger
effect clear @a[distance=..128] minecraft:infested
effect clear @a[distance=..128] minecraft:instant_damage
effect clear @a[distance=..128] minecraft:mining_fatigue
effect clear @a[distance=..128] minecraft:nausea
effect clear @a[distance=..128] minecraft:oozing
effect clear @a[distance=..128] minecraft:poison
effect clear @a[distance=..128] minecraft:slowness
effect clear @a[distance=..128] minecraft:weakness
effect clear @a[distance=..128] minecraft:weaving
effect clear @a[distance=..128] minecraft:wind_charged
effect clear @a[distance=..128] minecraft:wither

scoreboard players operation @s aa.cooldown.goat_horn = #gametime aa.const
scoreboard players add @s aa.cooldown.goat_horn 1199
schedule function aa:enchantment/beckon/reset 1199t append
