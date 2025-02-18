execute if score .difficulty local matches ..1 run attribute @s minecraft:max_health base set 300
execute if score .difficulty local matches ..1 run data modify entity @s Health set value 300

execute if score .difficulty local matches 2 run attribute @s minecraft:max_health base set 450
execute if score .difficulty local matches 2 run data modify entity @s Health set value 450

execute if score .difficulty local matches 3.. run attribute @s minecraft:max_health base set 600
execute if score .difficulty local matches 3.. run data modify entity @s Health set value 600

attribute @s minecraft:scale base set 1.25
