execute store result score .health aa.local run data get entity @s Health
execute if score .health aa.local matches 100.. run return fail
scoreboard players add .health aa.local 25
scoreboard players operation .health aa.local < #100 aa.const
execute store result entity @s Health float 1.0 run scoreboard players get .health aa.local

playsound minecraft:entity.iron_golem.repair ambient @a
playsound minecraft:entity.villager.celebrate ambient @a
scoreboard players set @s aa.cooldown 1000
