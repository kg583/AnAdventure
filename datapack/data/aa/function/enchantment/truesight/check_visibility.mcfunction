tag @s add aa.visible
execute as @a[advancements={aa:enchantment/truesight=true},distance=..101] if predicate aa:enchantment/truesight/visible as @n[tag=aa.visible,distance=..101] run tag @s add aa.revealed
tag @s remove aa.visible
