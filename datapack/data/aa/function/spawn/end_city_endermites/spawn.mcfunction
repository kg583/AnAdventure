execute summon minecraft:marker run tag @s add aa.spawn.end_city_endermites
spreadplayers ~ ~ 0 30 true @e[tag=aa.spawn.end_city_endermites]
execute at @e[tag=aa.spawn.end_city_endermites] positioned ~-1 ~ ~ unless block ~ ~-1 ~ minecraft:end_stone unless block ~ ~-1 ~ minecraft:air if block ~ ~ ~ minecraft:air run summon minecraft:endermite ~ ~ ~
execute at @e[tag=aa.spawn.end_city_endermites] positioned ~-1 ~ ~ unless block ~ ~-1 ~ minecraft:end_stone unless block ~ ~-1 ~ minecraft:air if block ~ ~ ~ minecraft:air run summon minecraft:endermite ~ ~ ~
execute at @e[tag=aa.spawn.end_city_endermites] positioned ~1 ~ ~ unless block ~ ~-1 ~ minecraft:end_stone unless block ~ ~-1 ~ minecraft:air if block ~ ~ ~ minecraft:air run summon minecraft:endermite ~ ~ ~
execute at @e[tag=aa.spawn.end_city_endermites] positioned ~-1 ~ ~1 unless block ~ ~-1 ~ minecraft:end_stone unless block ~ ~-1 ~ minecraft:air if block ~ ~ ~ minecraft:air run summon minecraft:endermite ~ ~ ~
execute at @e[tag=aa.spawn.end_city_endermites] positioned ~-2 ~ ~ unless block ~ ~-1 ~ minecraft:end_stone unless block ~ ~-1 ~ minecraft:air if block ~ ~ ~ minecraft:air run summon minecraft:endermite ~ ~ ~
execute at @e[tag=aa.spawn.end_city_endermites] positioned ~1 ~ ~-2 unless block ~ ~-1 ~ minecraft:end_stone unless block ~ ~-1 ~ minecraft:air if block ~ ~ ~ minecraft:air run summon minecraft:endermite ~ ~ ~
execute at @e[tag=aa.spawn.end_city_endermites] positioned ~ ~ ~1 unless block ~ ~-1 ~ minecraft:end_stone unless block ~ ~-1 ~ minecraft:air if block ~ ~ ~ minecraft:air run summon minecraft:endermite ~ ~ ~
execute at @e[tag=aa.spawn.end_city_endermites] positioned ~ ~ ~-1 unless block ~ ~-1 ~ minecraft:end_stone unless block ~ ~-1 ~ minecraft:air if block ~ ~ ~ minecraft:air run summon minecraft:endermite ~ ~ ~
kill @e[tag=aa.spawn.end_city_endermites]
schedule function aa:spawn/end_city_endermites/cooldown 10s append
