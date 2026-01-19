tag @s add aa.visible
execute as @a[advancements={aa:enchantment/truesight=true},distance=..101] if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",looking_at:{nbt:'{Tags:["aa.visible"]}'}}}} as @n[tag=aa.visible,distance=..101,type=#c:hostile] run tag @s add aa.revealed
tag @s remove aa.visible
