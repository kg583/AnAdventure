tp @s @n[tag=aa.raid.center,type=minecraft:marker]
forceload add ~ ~

# More effects
effect give @s minecraft:bad_omen 1 0 true
effect give @s minecraft:slowness infinite 100 true
effect give @s minecraft:invisibility infinite 0 true

schedule function aa:mechanics/raid/return 6s
