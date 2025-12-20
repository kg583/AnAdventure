tag @s add aa.wither.exploded
effect give @a[distance=..7] minecraft:wither 10 1

# Reinforcement counts
execute if score #difficulty aa.const matches ..1 run scoreboard players set @s aa.cooldown 1
execute if score #difficulty aa.const matches 2 run scoreboard players set @s aa.cooldown 2
execute if score #difficulty aa.const matches 3.. run scoreboard players set @s aa.cooldown 3
 