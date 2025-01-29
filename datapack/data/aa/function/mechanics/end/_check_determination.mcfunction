# Reset if not in End
execute unless dimension minecraft:the_end run attribute @s minecraft:max_health base reset
execute unless dimension minecraft:the_end run return fail

# Count armor pieces with Determination
execute store result score .previous local run attribute @s minecraft:max_health base get
scoreboard players set .health local 4

execute if items entity @s armor.feet *[minecraft:enchantments~[{enchantments:"aa:determination"}]] run scoreboard players add .health local 4
execute if items entity @s armor.legs *[minecraft:enchantments~[{enchantments:"aa:determination"}]] run scoreboard players add .health local 4
execute if items entity @s armor.chest *[minecraft:enchantments~[{enchantments:"aa:determination"}]] run scoreboard players add .health local 4
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"aa:determination"}]] run scoreboard players add .health local 4

# Set base health
scoreboard players operation .health local < #20 const
execute store result storage aa:io health int 1 run scoreboard players get .health local
data modify storage aa:io attribute set value "minecraft:max_health"
function aa:util/set_attribute with storage aa:io

# Change effects
execute if score .health local < .previous local run playsound minecraft:entity.player.hurt player @s
execute if score .health local < .previous local run playsound minecraft:entity.enderman.hurt player @s
execute if score .health local < .previous local run playsound minecraft:entity.blaze.hurt player @s
execute if score .health local < .previous local run effect give @s minecraft:nausea 7 0 true

execute if score .health local > .previous local run playsound minecraft:item.honey_bottle.drink player @s
execute if score .health local > .previous local run effect clear @s minecraft:nausea

# Schedule next check
schedule function aa:mechanics/end/check_determination 1s replace
