# Disable shield
execute at @s run summon minecraft:armor_stand ^ ^1 ^2 {equipment:{mainhand:{id:"minecraft:iron_axe",count:1}},Invulnerable:1b,Invisible:1b,NoGravity:1b,Tags:["aa.bash"]}
damage @s 0.01 minecraft:mob_attack by @n[tag=aa.bash]
kill @e[tag=aa.bash]

# Bash damage
tag @s add aa.bashing
execute at @s as @e[distance=..2,tag=!aa.bashing] run damage @s 5 minecraft:mob_attack
playsound item.shield.block hostile @a ~ ~ ~
tag @s remove aa.bashing

advancement revoke @s only aa:util/blocking

