# Prevent unlinked portals for entities
execute as @e[type=!minecraft:marker] at @s if dimension minecraft:overworld unless predicate minecraft:structure/ruined_portal unless entity @e[tag=aa.nether_portal,distance=..5] run function aa:mechanics/nether/destroy_unlinked_portals

# Kill sparky
execute as @e[tag=aa.sparky] at @s unless entity @e[type=!minecraft:small_fireball,distance=..2] run kill @s
