# Reset if not in End
execute unless dimension minecraft:the_end run return run function aa:mechanics/end/reset

# Count armor pieces with Determination
execute store result score #previous aa.local run attribute @s minecraft:max_health base get
scoreboard players set #health aa.local 4

execute if items entity @s armor.feet *[minecraft:enchantments~[{enchantments:"aa:determination"}]] run scoreboard players add #health aa.local 4
execute if items entity @s armor.legs *[minecraft:enchantments~[{enchantments:"aa:determination"}]] run scoreboard players add #health aa.local 4
execute if items entity @s armor.chest *[minecraft:enchantments~[{enchantments:"aa:determination"}]] run scoreboard players add #health aa.local 4
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"aa:determination"}]] run scoreboard players add #health aa.local 4

# Set base health
scoreboard players operation #health aa.local < #20 aa.const
execute store result storage aa:io value int 1 run scoreboard players get #health aa.local
data modify storage aa:io attribute set value "minecraft:max_health"
function aa:util/attribute with storage aa:io

# Change effects
execute if score #health aa.local < #previous aa.local run function aa:mechanics/end/hurt_effects
execute if score #health aa.local > #previous aa.local run function aa:mechanics/end/heal_effects
