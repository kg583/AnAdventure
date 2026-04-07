# Prevent from breaking
execute if items entity @s weapon.mainhand #aa:enchantable/unyielding[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{max:3}},!minecraft:tool={default_mining_speed:0,rules:[]}] run function aa:enchantment/unyielding/break {slot:"weapon.mainhand"}
execute if items entity @s weapon.offhand #aa:enchantable/unyielding[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{max:3}},!minecraft:tool={default_mining_speed:0,rules:[]}] run function aa:enchantment/unyielding/break {slot:"weapon.offhand"}

# Enable again if repaired (annoying)
data merge storage aa:io {slot:"hotbar.0",index:0}
execute if items entity @s hotbar.0 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:4}}] run function aa:enchantment/unyielding/repair with storage aa:io

data merge storage aa:io {slot:"hotbar.1",index:1}
execute if items entity @s hotbar.1 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:4}}] run function aa:enchantment/unyielding/repair with storage aa:io

data merge storage aa:io {slot:"hotbar.2",index:2}
execute if items entity @s hotbar.2 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:4}}] run function aa:enchantment/unyielding/repair with storage aa:io

data merge storage aa:io {slot:"hotbar.3",index:3}
execute if items entity @s hotbar.3 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:4}}] run function aa:enchantment/unyielding/repair with storage aa:io

data merge storage aa:io {slot:"hotbar.4",index:4}
execute if items entity @s hotbar.4 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:4}}] run function aa:enchantment/unyielding/repair with storage aa:io

data merge storage aa:io {slot:"hotbar.5",index:5}
execute if items entity @s hotbar.5 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:4}}] run function aa:enchantment/unyielding/repair with storage aa:io

data merge storage aa:io {slot:"hotbar.6",index:6}
execute if items entity @s hotbar.6 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:4}}] run function aa:enchantment/unyielding/repair with storage aa:io

data merge storage aa:io {slot:"hotbar.7",index:7}
execute if items entity @s hotbar.7 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:4}}] run function aa:enchantment/unyielding/repair with storage aa:io

data merge storage aa:io {slot:"hotbar.8",index:8}
execute if items entity @s hotbar.8 *[minecraft:enchantments~[{enchantments:"aa:unyielding"}],minecraft:damage~{durability:{min:4}}] run function aa:enchantment/unyielding/repair with storage aa:io
