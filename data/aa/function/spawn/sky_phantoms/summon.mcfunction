summon minecraft:phantom ~ 360 ~
summon minecraft:phantom ~-1 360 ~
summon minecraft:phantom ~ 361 ~1

execute positioned ~ 360 ~ run effect give @e[distance=..8,type=minecraft:phantom] minecraft:fire_resistance infinite

kill @s
