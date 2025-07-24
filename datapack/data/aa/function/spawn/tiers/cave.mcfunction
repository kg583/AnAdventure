# Culling
execute store result score .cull aa.rand run random value 0..8
execute if score .cull aa.rand >= .difficulty aa.local unless entity @p[distance=..32] run function aa:util/cull

# Pickaxes
execute store result score .pickaxe aa.rand run random value 0..9
execute if score .pickaxe aa.rand matches 0 unless items entity @s weapon.mainhand * run item replace entity @s[type=minecraft:zombie] weapon.mainhand with minecraft:iron_pickaxe
execute if score .pickaxe aa.rand matches 1 unless items entity @s weapon.mainhand * run item replace entity @s[type=minecraft:zombie] weapon.mainhand with minecraft:golden_pickaxe
execute if score .pickaxe aa.rand matches ..1 run item modify entity @s weapon.mainhand [{function:"minecraft:set_damage",damage:{min:0.04,max:0.12}},{function:"minecraft:enchant_randomly",only_compatible:true,conditions:[{condition:"minecraft:random_chance",chance:0.1}]}]

tag @s add aa.tiered
