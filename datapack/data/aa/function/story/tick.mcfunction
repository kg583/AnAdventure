# Name assignment
execute as @e[type=#aa:named] at @s unless data entity @s CustomName run function aa:story/names/name

# Nearby villagers
execute as @a at @s run function aa:story/nearby/villagers
