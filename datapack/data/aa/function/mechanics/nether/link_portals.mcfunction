execute unless entity @e[tag=aa.nether_portal,distance=..5,type=minecraft:marker] align xyz run summon minecraft:marker ~ ~ ~ {Tags:["aa.nether_portal","smithed.entity","smithed.strict"]}
advancement revoke @s only aa:mechanics/nether/link_portals
