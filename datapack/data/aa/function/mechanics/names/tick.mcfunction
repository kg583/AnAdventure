# Name assignment
execute as @e[type=#aa:named,tag=!smithed.entity] at @s unless data entity @s CustomName run function aa:mechanics/names/name
