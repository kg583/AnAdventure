# Scoreboard
execute as @a at @s if dimension minecraft:overworld unless block ~ ~ ~ minecraft:nether_portal run scoreboard players set @s last_dimension 0
execute as @a at @s if dimension minecraft:the_nether unless block ~ ~ ~ minecraft:nether_portal run scoreboard players set @s last_dimension -1

# Break Nether portals
function aa:mechanics/nether_portals/tick