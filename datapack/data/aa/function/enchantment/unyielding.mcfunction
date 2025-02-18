# Hotbar
data modify storage aa:io slot set value "hotbar.0"
data modify storage aa:io index set value 0
execute if items entity @s hotbar.0 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{max:2}},!minecraft:tool={default_mining_speed:0,rules:[]}] run function aa:enchantment/unyielding/break with storage aa:io
execute if items entity @s hotbar.0 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:3}}] run function aa:enchantment/unyielding/repair with storage aa:io

data modify storage aa:io slot set value "hotbar.1"
data modify storage aa:io index set value 1
execute if items entity @s hotbar.1 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{max:2}},!minecraft:tool={default_mining_speed:0,rules:[]}] run function aa:enchantment/unyielding/break with storage aa:io
execute if items entity @s hotbar.1 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:3}}] run function aa:enchantment/unyielding/repair with storage aa:io

data modify storage aa:io slot set value "hotbar.2"
data modify storage aa:io index set value 2
execute if items entity @s hotbar.2 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{max:2}},!minecraft:tool={default_mining_speed:0,rules:[]}] run function aa:enchantment/unyielding/break with storage aa:io
execute if items entity @s hotbar.2 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:3}}] run function aa:enchantment/unyielding/repair with storage aa:io

data modify storage aa:io slot set value "hotbar.3"
data modify storage aa:io index set value 3
execute if items entity @s hotbar.3 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{max:2}},!minecraft:tool={default_mining_speed:0,rules:[]}] run function aa:enchantment/unyielding/break with storage aa:io
execute if items entity @s hotbar.3 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:3}}] run function aa:enchantment/unyielding/repair with storage aa:io

data modify storage aa:io slot set value "hotbar.4"
data modify storage aa:io index set value 4
execute if items entity @s hotbar.4 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{max:2}},!minecraft:tool={default_mining_speed:0,rules:[]}] run function aa:enchantment/unyielding/break with storage aa:io
execute if items entity @s hotbar.4 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:3}}] run function aa:enchantment/unyielding/repair with storage aa:io

data modify storage aa:io slot set value "hotbar.5"
data modify storage aa:io index set value 5
execute if items entity @s hotbar.5 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{max:2}},!minecraft:tool={default_mining_speed:0,rules:[]}] run function aa:enchantment/unyielding/break with storage aa:io
execute if items entity @s hotbar.5 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:3}}] run function aa:enchantment/unyielding/repair with storage aa:io

data modify storage aa:io slot set value "hotbar.6"
data modify storage aa:io index set value 6
execute if items entity @s hotbar.6 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{max:2}},!minecraft:tool={default_mining_speed:0,rules:[]}] run function aa:enchantment/unyielding/break with storage aa:io
execute if items entity @s hotbar.6 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:3}}] run function aa:enchantment/unyielding/repair with storage aa:io

data modify storage aa:io slot set value "hotbar.7"
data modify storage aa:io index set value 7
execute if items entity @s hotbar.7 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{max:2}},!minecraft:tool={default_mining_speed:0,rules:[]}] run function aa:enchantment/unyielding/break with storage aa:io
execute if items entity @s hotbar.7 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:3}}] run function aa:enchantment/unyielding/repair with storage aa:io

data modify storage aa:io slot set value "hotbar.8"
data modify storage aa:io index set value 8
execute if items entity @s hotbar.8 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{max:2}},!minecraft:tool={default_mining_speed:0,rules:[]}] run function aa:enchantment/unyielding/break with storage aa:io
execute if items entity @s hotbar.8 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:3}}] run function aa:enchantment/unyielding/repair with storage aa:io

# Armor
data modify storage aa:io slot set value "armor.head"
data modify storage aa:io index set value 103
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{max:2}},!minecraft:tool={default_mining_speed:0,rules:[]}] run function aa:enchantment/unyielding/break with storage aa:io
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:3}}] run function aa:enchantment/unyielding/repair with storage aa:io

data modify storage aa:io slot set value "armor.chest"
data modify storage aa:io index set value 102
execute if items entity @s armor.chest *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{max:2}},!minecraft:tool={default_mining_speed:0,rules:[]}] run function aa:enchantment/unyielding/break with storage aa:io
execute if items entity @s armor.chest *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:3}}] run function aa:enchantment/unyielding/repair with storage aa:io

data modify storage aa:io slot set value "armor.legs"
data modify storage aa:io index set value 101
execute if items entity @s armor.legs *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{max:2}},!minecraft:tool={default_mining_speed:0,rules:[]}] run function aa:enchantment/unyielding/break with storage aa:io
execute if items entity @s armor.legs *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:3}}] run function aa:enchantment/unyielding/repair with storage aa:io

data modify storage aa:io slot set value "armor.feet"
data modify storage aa:io index set value 100
execute if items entity @s armor.feet *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{max:2}},!minecraft:tool={default_mining_speed:0,rules:[]}] run function aa:enchantment/unyielding/break with storage aa:io
execute if items entity @s armor.feet *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:3}}] run function aa:enchantment/unyielding/repair with storage aa:io
