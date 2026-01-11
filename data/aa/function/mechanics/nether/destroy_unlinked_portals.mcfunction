execute store result score #filled aa.local run fill ~-2 ~ ~-2 ~2 ~ ~2 minecraft:air replace minecraft:nether_portal
execute if score #filled aa.local matches 1.. run function aa:mechanics/nether/destroy_effects
