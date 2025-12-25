summon minecraft:phantom ~ 150 ~ {size:6}
execute if score #difficulty aa.const matches 2.. run summon minecraft:phantom ~-1 150 ~ {size:6}
execute if score #difficulty aa.const matches 3.. run summon minecraft:phantom ~ 151 ~1 {size:6}
execute if score #difficulty aa.const matches 3.. run summon minecraft:phantom ~ 152 ~-1 {size:6}

kill @s
