execute store result score .filled aa.local run fill ~-1 ~ ~-1 ~1 ~ ~1 minecraft:dead_bush replace #c:saplings
execute if score .filled aa.local matches 1.. run playsound minecraft:block.crop.break block @a ~ ~ ~
