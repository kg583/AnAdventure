summon minecraft:marker ~ ~ ~ {Tags:["aa.monument","smithed.entity","smithed.strict"]}

fill ~-1 ~-1 ~-1 ~ ~ ~ minecraft:water replace minecraft:gold_block
execute align xyz run summon minecraft:trident ~ ~ ~ {pickup:1b,Tags:["aa.trident","smithed.entity"]}
