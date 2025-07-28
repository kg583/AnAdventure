# Silk touch
execute as @a at @s if predicate {condition:"minecraft:location_check",predicate:{light:{light:{min:12}}}} if entity @e[type=minecraft:spider,distance=..1.2] run function aa:mechanics/arcane_pages/silk_touch
