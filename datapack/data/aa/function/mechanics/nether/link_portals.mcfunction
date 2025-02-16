execute unless entity @e[type=minecraft:marker,tag=aa.nether_portal,distance=..5] align xyz summon minecraft:marker run tag @s add aa.nether_portal
advancement revoke @s only aa:mechanics/nether/link_portals
