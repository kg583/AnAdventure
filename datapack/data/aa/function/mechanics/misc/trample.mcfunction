execute store result score .filled local run fill ^-1 ^ ^2 ^1 ^ ^-1 minecraft:air replace #minecraft:crops
execute if score .filled local matches 1.. run playsound minecraft:block.crop.break block @a ~ ~ ~

execute store result score .filled local run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 minecraft:dirt replace minecraft:farmland
execute if score .filled local matches 1.. run playsound minecraft:block.grass.break block @a ~ ~ ~

execute store result score .filled local run fill ^-1 ^ ^2 ^1 ^2 ^-1 minecraft:air replace #aa:grass_trample
execute if score .filled local matches 1.. run playsound minecraft:block.grass.break block @a ~ ~ ~

execute store result score .filled local run fill ^-1 ^ ^2 ^1 ^ ^-1 minecraft:air replace #minecraft:gourds
execute if score .filled local matches 1.. run playsound minecraft:block.wood.break block @a ~ ~ ~
