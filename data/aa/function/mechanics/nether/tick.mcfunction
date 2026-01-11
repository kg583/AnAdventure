# Prevent unlinked portals for entities
execute as @e[tag=!smithed.strict,type=!#c:static] at @s if dimension minecraft:overworld if block ~ ~ ~ minecraft:nether_portal unless predicate c:structure/ruined_portal unless entity @e[tag=aa.nether_portal,distance=..5,type=minecraft:marker] run function aa:mechanics/nether/destroy_unlinked_portals
execute as @e[tag=!smithed.strict,type=#aa:portal_cheese] at @s if dimension minecraft:overworld unless predicate c:structure/ruined_portal unless entity @e[tag=aa.nether_portal,distance=..5,type=minecraft:marker] run function aa:mechanics/nether/destroy_unlinked_portals

# Kill sparky
execute as @e[tag=aa.sparky,type=minecraft:small_fireball] at @s unless entity @e[distance=..2,type=!minecraft:small_fireball] run kill @s
