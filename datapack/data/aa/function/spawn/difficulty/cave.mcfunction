# Culling
execute store result score .cull aa.rand run random value 0..11
execute if score .cull aa.rand > .difficulty aa.local unless entity @p[distance=..16] run return run function aa:util/cull

# Pickaxes
execute store result score .pickaxe aa.rand run random value 0..9
execute if entity @s[type=minecraft:zombie] if score .pickaxe aa.rand matches 0 unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand with minecraft:iron_pickaxe
execute if entity @s[type=minecraft:zombie] if score .pickaxe aa.rand matches 1 unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand with minecraft:golden_pickaxe
execute if entity @s[type=minecraft:zombie] if score .pickaxe aa.rand matches ..1 run item modify entity @s weapon.mainhand [{function:"minecraft:set_damage",damage:{min:0.04,max:0.12}},{function:"minecraft:enchant_randomly",only_compatible:true,conditions:[{condition:"minecraft:random_chance",chance:0.1}]}]
