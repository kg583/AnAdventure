execute positioned ~ ~1 ~ run function aa:mechanics/raid/trample
execute if score @p aa.raid matches 2.. unless block ~ ~ ~ #aa:evoker_bomb_safe unless entity @e[type=minecraft:tnt,tag=aa.evoker_bomb,distance=..1] unless score @s aa.cooldown matches 1.. run function aa:mechanics/raid/evoker_fang with entity @s
