data modify entity @s potion_contents set from entity @n[tag=aa.tipped_arrow,distance=..2,type=minecraft:arrow] item.components."minecraft:potion_contents"
data merge entity @s {potion_duration_scale:0.083f,Radius:2,RadiusPerTick:-0.005f,RadiusOnUse:-0.5f,ReapplicationDelay:20,WaitTime:10}
