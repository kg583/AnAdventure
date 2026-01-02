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

# Lose Curse of Vanishing items
execute if items entity @s hotbar.0 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @s hotbar.0 with minecraft:air
execute if items entity @s hotbar.1 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @s hotbar.1 with minecraft:air
execute if items entity @s hotbar.2 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @s hotbar.2 with minecraft:air
execute if items entity @s hotbar.3 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @s hotbar.3 with minecraft:air
execute if items entity @s hotbar.4 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @s hotbar.4 with minecraft:air
execute if items entity @s hotbar.5 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @s hotbar.5 with minecraft:air
execute if items entity @s hotbar.6 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @s hotbar.6 with minecraft:air
execute if items entity @s hotbar.7 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @s hotbar.7 with minecraft:air
execute if items entity @s hotbar.8 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @s hotbar.8 with minecraft:air

# Damage armor
item modify entity @s armor.head aa:mechanics/death/damage_armor
item modify entity @s armor.chest aa:mechanics/death/damage_armor
item modify entity @s armor.legs aa:mechanics/death/damage_armor
item modify entity @s armor.feet aa:mechanics/death/damage_armor

# Lose XP
execute store result score #xp aa.local run xp query @s levels
scoreboard players operation #xp aa.local /= #-2 aa.const
execute store result storage aa:io xp int 1 run scoreboard players get #xp aa.local
data merge storage aa:io {function:"add",type:"levels"}
function aa:util/xp with storage aa:io

advancement revoke @s only aa:mechanics/death/die
advancement revoke @s only aa:mechanics/death/respawn
