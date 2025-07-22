# Prevent unlinked portals for entities
execute as @e[type=!#c:static] at @s if dimension minecraft:overworld if block ~ ~ ~ minecraft:nether_portal unless predicate c:structure/ruined_portal unless entity @e[type=minecraft:marker,tag=aa.nether_portal,distance=..5] run function aa:mechanics/nether/destroy_unlinked_portals
execute as @e[type=#aa:portal_cheese] at @s if dimension minecraft:overworld unless predicate c:structure/ruined_portal unless entity @e[type=minecraft:marker,tag=aa.nether_portal,distance=..5] run function aa:mechanics/nether/destroy_unlinked_portals

# Kill sparky
execute as @e[type=minecraft:small_fireball,tag=aa.sparky] at @s unless entity @e[type=!minecraft:small_fireball,distance=..2] run kill @s
