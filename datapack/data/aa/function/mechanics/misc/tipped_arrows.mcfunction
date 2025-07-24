execute summon area_effect_cloud run data modify entity @s potion_contents set from entity @n[type=minecraft:arrow,distance=..2] item.components."minecraft:potion_contents"
data merge entity @n[type=minecraft:area_effect_cloud,distance=..2] {potion_duration_scale:0.083f,Radius:2,RadiusPerTick:-0.005f,RadiusOnUse:-0.5f,ReapplicationDelay:20,WaitTime:10}

data remove entity @s item
