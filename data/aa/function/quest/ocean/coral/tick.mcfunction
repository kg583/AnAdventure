execute unless block ~ ~ ~ #c:corals unless score @s aa.time matches ..105 run return run kill @s

scoreboard players add @s aa.time 1
execute if score @s aa.time matches 100.. if block ~ ~ ~ #c:corals run advancement grant @p only aa:quest/ocean/coral
