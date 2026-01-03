summon minecraft:phantom ~ 350 ~
summon minecraft:phantom ~-1 350 ~
summon minecraft:phantom ~ 351 ~1

execute positioned ~ 350 ~ run effect give @e[type=minecraft:phantom,distance=..8] minecraft:fire_resistance infinite

kill @s
