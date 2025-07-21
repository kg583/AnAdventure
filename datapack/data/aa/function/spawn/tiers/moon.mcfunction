# Zombie jockeys
execute if entity @s[type=minecraft:zombie,nbt={IsBaby:false}] summon minecraft:zombie_horse run ride @n[type=minecraft:zombie,distance=..1] mount @s
execute if entity @s[type=minecraft:zombie,nbt={IsBaby:true}] summon minecraft:wolf run ride @n[type=minecraft:zombie,distance=..1] mount @s

# Witch covens
execute if entity @s[type=minecraft:witch] run summon minecraft:witch ~1 ~.6 ~1
execute if entity @s[type=minecraft:witch] run summon minecraft:witch ~ ~.6 ~-1
