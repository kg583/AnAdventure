tp @s @n[tag=aa.raid.return,type=minecraft:marker]

kill @e[tag=aa.raid.return,type=minecraft:marker]
tag @s remove aa.raid.return

playsound minecraft:entity.pillager.celebrate ambient @a
effect clear @s minecraft:slowness
effect clear @s minecraft:invisibility
