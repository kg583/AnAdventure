# Dialogue
execute as @e[tag=aa.talking] at @s run function aa:story/dialogue/tick
execute as @e[tag=aa.talk_lock] at @s unless entity @e[tag=aa.talking,distance=..2] run kill @s

# Name assignment
execute as @e[type=minecraft:villager] unless data entity @s CustomName run function aa:story/names/name
execute as @e[type=minecraft:wandering_trader] unless data entity @s CustomName run function aa:story/names/name_trader
