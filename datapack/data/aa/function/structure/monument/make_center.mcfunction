summon minecraft:marker ~ ~ ~ {Tags:["aa.monument","smithed.entity","smithed.strict"]}

fill ~-1 ~-1 ~-1 ~ ~ ~ minecraft:water replace minecraft:gold_block
execute align xyz run summon minecraft:trident ~ ~ ~ {Tags:["aa.trident","smithed.entity"]}
data modify entity @n[type=minecraft:trident,tag=aa.trident,distance=..2] pickup set value 1b
