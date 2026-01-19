execute store result score #y aa.local run data get entity @s Pos[1]

execute if dimension minecraft:overworld if score #y aa.local matches 100000.. run function aa:mechanics/death/space
execute if dimension minecraft:the_nether if score #y aa.local matches 127.. run function aa:mechanics/death/nether_roof
