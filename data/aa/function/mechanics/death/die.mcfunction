# Transfer inventory
summon minecraft:chest_minecart ~ ~ ~ {Tags:["aa.current","smithed.entity","smithed.strict"]}

execute unless items entity @s inventory.0 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.0 from entity @s inventory.0
execute unless items entity @s inventory.1 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.1 from entity @s inventory.1
execute unless items entity @s inventory.2 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.2 from entity @s inventory.2
execute unless items entity @s inventory.3 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.3 from entity @s inventory.3
execute unless items entity @s inventory.4 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.4 from entity @s inventory.4
execute unless items entity @s inventory.5 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.5 from entity @s inventory.5
execute unless items entity @s inventory.6 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.6 from entity @s inventory.6
execute unless items entity @s inventory.7 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.7 from entity @s inventory.7
execute unless items entity @s inventory.8 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.8 from entity @s inventory.8
execute unless items entity @s inventory.9 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.9 from entity @s inventory.9
execute unless items entity @s inventory.10 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.10 from entity @s inventory.10
execute unless items entity @s inventory.11 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.11 from entity @s inventory.11
execute unless items entity @s inventory.12 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.12 from entity @s inventory.12
execute unless items entity @s inventory.13 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.13 from entity @s inventory.13
execute unless items entity @s inventory.14 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.14 from entity @s inventory.14
execute unless items entity @s inventory.15 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.15 from entity @s inventory.15
execute unless items entity @s inventory.16 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.16 from entity @s inventory.16
execute unless items entity @s inventory.17 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.17 from entity @s inventory.17
execute unless items entity @s inventory.18 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.18 from entity @s inventory.18
execute unless items entity @s inventory.19 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.19 from entity @s inventory.19
execute unless items entity @s inventory.20 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.20 from entity @s inventory.20
execute unless items entity @s inventory.21 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.21 from entity @s inventory.21
execute unless items entity @s inventory.22 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.22 from entity @s inventory.22
execute unless items entity @s inventory.23 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.23 from entity @s inventory.23
execute unless items entity @s inventory.24 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.24 from entity @s inventory.24
execute unless items entity @s inventory.25 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.25 from entity @s inventory.25
execute unless items entity @s inventory.26 *[minecraft:enchantments={"minecraft:vanishing_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.26 from entity @s inventory.26

kill @e[tag=aa.current,type=minecraft:chest_minecart]

# Transfer Curse of Binding armor pieces
summon minecraft:chest_minecart ~ ~ ~ {Tags:["aa.current","smithed.entity","smithed.strict"]}
execute if items entity @s armor.head *[minecraft:enchantments={"minecraft:binding_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.0 from entity @s armor.head
execute if items entity @s armor.chest *[minecraft:enchantments={"minecraft:binding_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.1 from entity @s armor.chest
execute if items entity @s armor.legs *[minecraft:enchantments={"minecraft:binding_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.2 from entity @s armor.legs
execute if items entity @s armor.feet *[minecraft:enchantments={"minecraft:binding_curse":1}] run item replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.3 from entity @s armor.feet

kill @e[tag=aa.current,type=minecraft:chest_minecart]
