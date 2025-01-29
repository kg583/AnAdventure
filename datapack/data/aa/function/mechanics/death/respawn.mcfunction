# Clear non-hotbar
item replace entity @s inventory.0 with minecraft:air
item replace entity @s inventory.1 with minecraft:air
item replace entity @s inventory.2 with minecraft:air
item replace entity @s inventory.3 with minecraft:air
item replace entity @s inventory.4 with minecraft:air
item replace entity @s inventory.5 with minecraft:air
item replace entity @s inventory.6 with minecraft:air
item replace entity @s inventory.7 with minecraft:air
item replace entity @s inventory.8 with minecraft:air
item replace entity @s inventory.9 with minecraft:air
item replace entity @s inventory.10 with minecraft:air
item replace entity @s inventory.11 with minecraft:air
item replace entity @s inventory.12 with minecraft:air
item replace entity @s inventory.13 with minecraft:air
item replace entity @s inventory.14 with minecraft:air
item replace entity @s inventory.15 with minecraft:air
item replace entity @s inventory.16 with minecraft:air
item replace entity @s inventory.17 with minecraft:air
item replace entity @s inventory.18 with minecraft:air
item replace entity @s inventory.19 with minecraft:air
item replace entity @s inventory.20 with minecraft:air
item replace entity @s inventory.21 with minecraft:air
item replace entity @s inventory.22 with minecraft:air
item replace entity @s inventory.23 with minecraft:air
item replace entity @s inventory.24 with minecraft:air
item replace entity @s inventory.25 with minecraft:air
item replace entity @s inventory.26 with minecraft:air

# Damage armor
item modify entity @s armor.head {"function":"minecraft:set_damage","damage":-0.2,"add":true}
item modify entity @s armor.chest {"function":"minecraft:set_damage","damage":-0.2,"add":true}
item modify entity @s armor.legs {"function":"minecraft:set_damage","damage":-0.2,"add":true}
item modify entity @s armor.feet {"function":"minecraft:set_damage","damage":-0.2,"add":true}

# Lose XP
execute store result score .xp local run xp query @s levels
scoreboard players operation .xp local /= #-2 const
execute store result storage aa:io xp int 1 run scoreboard players get .xp local
data merge storage aa:io {"function":"add","type":"levels"}
function aa:util/xp with storage aa:io

advancement revoke @s only aa:mechanics/death/respawn
