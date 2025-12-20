summon minecraft:marker ~ ~ ~ {Tags:["aa.spawn.end_city_phantoms","smithed.entity","smithed.strict"]}
spreadplayers ~ ~ 0 50 true @e[type=minecraft:marker,tag=aa.spawn.end_city_phantoms]

execute at @e[type=minecraft:marker,tag=aa.spawn.end_city_phantoms] run summon minecraft:phantom ~ 150 ~ {size:6}
execute if score #difficulty aa.const matches 2.. at @e[type=minecraft:marker,tag=aa.spawn.end_city_phantoms] run summon minecraft:phantom ~-1 150 ~ {size:6}
execute if score #difficulty aa.const matches 3.. at @e[type=minecraft:marker,tag=aa.spawn.end_city_phantoms] run summon minecraft:phantom ~ 151 ~1 {size:6}
execute if score #difficulty aa.const matches 3.. at @e[type=minecraft:marker,tag=aa.spawn.end_city_phantoms] run summon minecraft:phantom ~ 152 ~-1 {size:6}

kill @e[type=minecraft:marker,tag=aa.spawn.end_city_phantoms]
schedule function aa:spawn/end_city_phantoms/cooldown 90s append
