execute store result score .health aa.local run data get entity @s Health
scoreboard players add .health aa.local 20
execute store result entity @s Health float 1.0 run scoreboard players get .health aa.local

playsound minecraft:block.grindstone.use ambient @a
playsound minecraft:entity.villager.celebrate ambient @a
scoreboard players set @s aa.cooldown 1000
