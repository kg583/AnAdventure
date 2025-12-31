# Reveal mobs
schedule clear aa:enchantment/truesight/clear
execute as @e[type=#c:hostile,tag=!smithed.strict,distance=..101] at @s run function aa:enchantment/truesight/check_visibility
effect give @e[type=#c:hostile,tag=aa.revealed,distance=..101] minecraft:glowing 2 0 true

# Schedule clear
schedule function aa:enchantment/truesight/clear 2t
advancement revoke @s only aa:enchantment/truesight
