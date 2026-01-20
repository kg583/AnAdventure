execute unless entity @n[tag=aa.stronghold,distance=..1,type=minecraft:marker] run summon minecraft:marker ~ ~ ~ {Tags:["aa.stronghold","smithed.entity","smithed.strict"]}
execute positioned ~-2.5 ~0.4 ~-2.5 unless entity @n[tag=aa.stronghold,distance=..1,type=minecraft:item_display] run summon minecraft:item_display ~ ~ ~ {Tags:["aa.stronghold","smithed.entity","smithed.strict"]}

execute unless data storage aa:story beacon_spawn_pos run data modify entity @n[tag=aa.stronghold,type=minecraft:item_display] item set value {id:"minecraft:nether_star",count:1}
execute unless data storage aa:story beacon_spawn_pos run fill ~-6 ~-3 ~-6 ~ ~ ~ minecraft:barrier replace #minecraft:air
execute unless data storage aa:story beacon_spawn_pos run fill ~-6 ~-3 ~-6 ~ ~ ~ minecraft:air replace minecraft:end_portal

execute if data storage aa:story beacon_spawn_pos run data modify entity @n[type=minecraft:item_display,tag=aa.stronghold] item set value {id:"minecraft:ender_eye",count:1}
execute if data storage aa:story beacon_spawn_pos run fill ~-6 ~-3 ~-6 ~ ~ ~ minecraft:air replace minecraft:barrier
