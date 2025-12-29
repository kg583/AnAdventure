execute positioned ~ ~1 ~ run function aa:mechanics/misc/trample
execute unless block ~ ~ ~ #aa:evoker_bomb_safe unless entity @e[type=minecraft:tnt,tag=aa.evoker_bomb,distance=..1] unless score @s aa.cooldown matches 1.. run function aa:mechanics/misc/_evoker_fangs with entity @s
