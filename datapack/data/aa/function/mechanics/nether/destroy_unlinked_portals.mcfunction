execute store result score .filled aa.local run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:air replace minecraft:nether_portal
execute if score .filled aa.local matches 1.. run particle minecraft:portal ~ ~ ~ 1 2 1 2 500
execute if score .filled aa.local matches 1.. run playsound minecraft:particle.soul_escape block @a ~ ~ ~ 5
