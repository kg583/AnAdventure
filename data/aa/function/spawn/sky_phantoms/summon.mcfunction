summon minecraft:phantom ~ 350 ~
summon minecraft:phantom ~-1 350 ~
summon minecraft:phantom ~ 351 ~1

execute positioned ~ 350 ~ run effect give @e[distance=..8,type=minecraft:phantom] minecraft:fire_resistance infinite

kill @s
