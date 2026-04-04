item replace entity @s saddle with minecraft:fire_charge[minecraft:equippable={slot:"saddle",equip_sound:"intentionally_empty"},minecraft:enchantments={"aa:_ignite":1}]

execute if entity @s[gamemode=survival] run function aa:util/gamemode/survival
execute if entity @s[gamemode=creative] run function aa:util/gamemode/creative
execute if entity @s[gamemode=adventure] run function aa:util/gamemode/adventure

item replace entity @s saddle with minecraft:air
