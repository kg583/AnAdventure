# Transfer inventory
execute summon minecraft:chest_minecart run tag @s add aa.current

item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.0 from entity @s inventory.0
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.1 from entity @s inventory.1
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.2 from entity @s inventory.2
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.3 from entity @s inventory.3
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.4 from entity @s inventory.4
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.5 from entity @s inventory.5
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.6 from entity @s inventory.6
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.7 from entity @s inventory.7
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.8 from entity @s inventory.8
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.9 from entity @s inventory.9
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.10 from entity @s inventory.10
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.11 from entity @s inventory.11
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.12 from entity @s inventory.12
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.13 from entity @s inventory.13
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.14 from entity @s inventory.14
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.15 from entity @s inventory.15
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.16 from entity @s inventory.16
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.17 from entity @s inventory.17
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.18 from entity @s inventory.18
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.19 from entity @s inventory.19
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.20 from entity @s inventory.20
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.21 from entity @s inventory.21
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.22 from entity @s inventory.22
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.23 from entity @s inventory.23
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.24 from entity @s inventory.24
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.25 from entity @s inventory.25
item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.26 from entity @s inventory.26

# Drop items
kill @e[type=minecraft:chest_minecart,tag=aa.current]
