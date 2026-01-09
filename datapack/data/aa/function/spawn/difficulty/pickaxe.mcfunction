execute if score #pickaxe aa.rand matches 0 unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand with minecraft:iron_pickaxe
execute if score #pickaxe aa.rand matches 1 unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand with minecraft:golden_pickaxe
item modify entity @s weapon.mainhand [{function:"minecraft:set_damage",damage:{min:0.04,max:0.12}},{function:"minecraft:enchant_randomly",only_compatible:true,conditions:[{condition:"minecraft:random_chance",chance:0.1}]}]
