execute store result score .health aa.local run data get entity @s Health
scoreboard players add .health aa.local 25
execute if score .health aa.local matches 101.. run return fail
execute store result entity @s Health float 1.0 run scoreboard players get .health aa.local

playsound minecraft:block.grindstone.use ambient @a
playsound minecraft:entity.villager.celebrate ambient @a
scoreboard players set @s aa.cooldown 1000
