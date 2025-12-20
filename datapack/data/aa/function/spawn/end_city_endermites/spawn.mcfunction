summon minecraft:marker ~ ~ ~ {Tags:["aa.spawn.end_city_endermites","smithed.entity","smithed.strict"]}
spreadplayers ~ ~ 0 30 true @e[type=minecraft:marker,tag=aa.spawn.end_city_endermites]

execute at @e[type=minecraft:marker,tag=aa.spawn.end_city_endermites] positioned ~-1 ~ ~ unless block ~ ~-1 ~ minecraft:end_stone unless block ~ ~-1 ~ #minecraft:air if block ~ ~ ~ #minecraft:air run summon minecraft:endermite ~ ~ ~
execute at @e[type=minecraft:marker,tag=aa.spawn.end_city_endermites] positioned ~-1 ~ ~ unless block ~ ~-1 ~ minecraft:end_stone unless block ~ ~-1 ~ #minecraft:air if block ~ ~ ~ #minecraft:air run summon minecraft:endermite ~ ~ ~
execute at @e[type=minecraft:marker,tag=aa.spawn.end_city_endermites] positioned ~1 ~ ~ unless block ~ ~-1 ~ minecraft:end_stone unless block ~ ~-1 ~ #minecraft:air if block ~ ~ ~ #minecraft:air run summon minecraft:endermite ~ ~ ~
execute at @e[type=minecraft:marker,tag=aa.spawn.end_city_endermites] positioned ~-1 ~ ~1 unless block ~ ~-1 ~ minecraft:end_stone unless block ~ ~-1 ~ #minecraft:air if block ~ ~ ~ #minecraft:air run summon minecraft:endermite ~ ~ ~
execute at @e[type=minecraft:marker,tag=aa.spawn.end_city_endermites] positioned ~-2 ~ ~ unless block ~ ~-1 ~ minecraft:end_stone unless block ~ ~-1 ~ #minecraft:air if block ~ ~ ~ #minecraft:air run summon minecraft:endermite ~ ~ ~
execute at @e[type=minecraft:marker,tag=aa.spawn.end_city_endermites] positioned ~1 ~ ~-2 unless block ~ ~-1 ~ minecraft:end_stone unless block ~ ~-1 ~ #minecraft:air if block ~ ~ ~ #minecraft:air run summon minecraft:endermite ~ ~ ~
execute at @e[type=minecraft:marker,tag=aa.spawn.end_city_endermites] positioned ~ ~ ~1 unless block ~ ~-1 ~ minecraft:end_stone unless block ~ ~-1 ~ #minecraft:air if block ~ ~ ~ #minecraft:air run summon minecraft:endermite ~ ~ ~
execute at @e[type=minecraft:marker,tag=aa.spawn.end_city_endermites] positioned ~ ~ ~-1 unless block ~ ~-1 ~ minecraft:end_stone unless block ~ ~-1 ~ #minecraft:air if block ~ ~ ~ #minecraft:air run summon minecraft:endermite ~ ~ ~

kill @e[type=minecraft:marker,tag=aa.spawn.end_city_endermites]
schedule function aa:spawn/end_city_endermites/cooldown 10s append
