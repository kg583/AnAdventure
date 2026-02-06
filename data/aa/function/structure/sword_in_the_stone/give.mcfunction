loot give @s loot aa:gameplay/sword_in_the_stone
playsound minecraft:item.armor.equip_diamond block @a ~ ~ ~
summon minecraft:experience_orb ~ ~1 ~ {Count:3,Value:50}

kill @n[tag=aa.sword_in_the_stone,distance=..8,type=minecraft:interaction]
kill @n[tag=aa.sword_in_the_stone,distance=..8,type=minecraft:item_display]
