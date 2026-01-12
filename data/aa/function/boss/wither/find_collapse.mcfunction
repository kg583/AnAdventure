# Find lowest block above and near wither
execute unless entity @n[tag=!smithed.entity,distance=..48,type=minecraft:wither] run return run kill @s
execute unless block ~ ~ ~ #aa:wither_collapsible positioned ~ ~1 ~ run return run function aa:boss/wither/find_collapse
execute if entity @e[tag=smithed.block,distance=..0.8] positioned ~ ~1 ~ run return run function aa:boss/wither/find_collapse

# Collapse it
summon minecraft:chest_minecart ~ ~ ~ {Tags:["aa.current","smithed.entity","smithed.strict"]}
loot replace entity @n[tag=aa.current,type=minecraft:chest_minecart] container.0 mine ~ ~ ~ minecraft:netherite_pickaxe[minecraft:enchantments={"minecraft:silk_touch":1}]
data modify storage aa:io block set from entity @n[tag=aa.current,type=minecraft:chest_minecart] Items[0].id
function aa:boss/wither/collapse_block with storage aa:io

data modify entity @n[tag=aa.current,type=minecraft:chest_minecart] Items set value []
kill @n[tag=aa.current,type=minecraft:chest_minecart]
kill @s
