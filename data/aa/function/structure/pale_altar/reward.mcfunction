# Clear altar
execute positioned ~5 ~2 ~ if block ~ ~ ~ minecraft:creaking_heart run function aa:structure/pale_altar/clear_altar
execute positioned ~-5 ~2 ~ if block ~ ~ ~ minecraft:creaking_heart run function aa:structure/pale_altar/clear_altar
execute positioned ~ ~2 ~5 if block ~ ~ ~ minecraft:creaking_heart run function aa:structure/pale_altar/clear_altar
execute positioned ~ ~2 ~-5 if block ~ ~ ~ minecraft:creaking_heart run function aa:structure/pale_altar/clear_altar

# Summon rewards
loot spawn ~ ~1 ~ loot aa:gameplay/pale_eye

# Quest
advancement grant @a[distance=..20] only aa:quest/magic/altar
