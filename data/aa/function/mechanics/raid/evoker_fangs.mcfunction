execute positioned ~ ~1 ~ run function aa:mechanics/raid/trample
execute if score @p aa.raid matches 2.. unless block ~ ~ ~ #aa:evoker_bomb_safe unless entity @e[tag=aa.evoker_bomb,distance=..1,type=minecraft:tnt] unless score @s aa.time matches 1.. run function aa:mechanics/raid/each_fang with entity @s
