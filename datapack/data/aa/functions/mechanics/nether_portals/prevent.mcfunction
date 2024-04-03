execute at @s unless entity @e[type=minecraft:marker,tag=aa.static.portal,distance=..5] run function aa:mechanics/nether_portals/destroy
advancement revoke @s only aa:mechanics/nether_portals/prevent
