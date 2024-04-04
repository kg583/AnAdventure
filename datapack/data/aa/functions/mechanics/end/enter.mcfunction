function aa:mechanics/skyfall {x:2000,z:2000}
fill 1998 99 1998 2002 99 2002 minecraft:obsidian
execute unless entity @s[tag=aa.progress.travel.end] run schedule function aa:mechanics/end/_announce 11s append

advancement revoke @s only aa:mechanics/end/enter
