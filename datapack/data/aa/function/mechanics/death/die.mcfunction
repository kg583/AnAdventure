# Transfer inventory
summon minecraft:chest_minecart ~ ~ ~ {Tags:["aa.current","smithed.entity","smithed.strict"]}

execute unless items entity @s inventory.0 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.0 from entity @s inventory.0
execute unless items entity @s inventory.1 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.1 from entity @s inventory.1
execute unless items entity @s inventory.2 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.2 from entity @s inventory.2
execute unless items entity @s inventory.3 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.3 from entity @s inventory.3
execute unless items entity @s inventory.4 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.4 from entity @s inventory.4
execute unless items entity @s inventory.5 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.5 from entity @s inventory.5
execute unless items entity @s inventory.6 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.6 from entity @s inventory.6
execute unless items entity @s inventory.7 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.7 from entity @s inventory.7
execute unless items entity @s inventory.8 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.8 from entity @s inventory.8
execute unless items entity @s inventory.9 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.9 from entity @s inventory.9
execute unless items entity @s inventory.1 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.10 from entity @s inventory.10
execute unless items entity @s inventory.1 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.11 from entity @s inventory.11
execute unless items entity @s inventory.1 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.12 from entity @s inventory.12
execute unless items entity @s inventory.1 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.13 from entity @s inventory.13
execute unless items entity @s inventory.1 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.14 from entity @s inventory.14
execute unless items entity @s inventory.1 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.15 from entity @s inventory.15
execute unless items entity @s inventory.1 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.16 from entity @s inventory.16
execute unless items entity @s inventory.1 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.17 from entity @s inventory.17
execute unless items entity @s inventory.1 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.18 from entity @s inventory.18
execute unless items entity @s inventory.1 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.19 from entity @s inventory.19
execute unless items entity @s inventory.2 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.20 from entity @s inventory.20
execute unless items entity @s inventory.2 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.21 from entity @s inventory.21
execute unless items entity @s inventory.2 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.22 from entity @s inventory.22
execute unless items entity @s inventory.2 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.23 from entity @s inventory.23
execute unless items entity @s inventory.2 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.24 from entity @s inventory.24
execute unless items entity @s inventory.2 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.25 from entity @s inventory.25
execute unless items entity @s inventory.2 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[type=minecraft:chest_minecart,tag=aa.current] container.26 from entity @s inventory.26

# Drop items
kill @e[type=minecraft:chest_minecart,tag=aa.current]
