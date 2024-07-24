execute at @s unless entity @e[type=minecraft:marker,tag=aa.static.portal,distance=..5] run function aa:mechanics/nether_portals/destroy_unlinked_portals
advancement revoke @s only aa:mechanics/nether/prevent_unlinked_portals
