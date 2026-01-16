# Check cooldown
scoreboard players remove @s aa.time 1
scoreboard players operation @s aa.time > #0 aa.const

execute if score @s aa.time matches 1.. run return fail

# Check for smith
scoreboard players operation #heal_dist aa.io = @p aa.raid
scoreboard players operation #heal_dist aa.local > #1 aa.const
execute store result storage aa:io heal_dist int 4.0 run scoreboard players get #heal_dist aa.local
execute store result score #success aa.local run function aa:mechanics/misc/check_smith with storage aa:io
execute if score #success aa.local matches 0 run return fail

# Apply healing
execute store result score #health aa.local run data get entity @s Health
execute if score #health aa.local matches 100.. run return fail
scoreboard players add #health aa.local 25
scoreboard players operation #health aa.local < #100 aa.const
execute store result entity @s Health float 1.0 run scoreboard players get #health aa.local

playsound minecraft:entity.iron_golem.repair ambient @a
playsound minecraft:entity.villager.celebrate ambient @a
scoreboard players set @s aa.time 1000
