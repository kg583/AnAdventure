execute store result score .filled local run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:dead_bush replace #minecraft:saplings
execute if score .filled local matches 1.. run playsound minecraft:block.crop.break block @a ~ ~ ~
