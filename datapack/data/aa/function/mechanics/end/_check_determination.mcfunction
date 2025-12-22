# Reset if not in End
execute unless dimension minecraft:the_end run attribute @s minecraft:max_health base reset
execute unless dimension minecraft:the_end run attribute @s minecraft:gravity base reset
execute unless dimension minecraft:the_end run attribute @s minecraft:fall_damage_multiplier base reset

execute unless dimension minecraft:the_end run tag @s remove aa.in_end
execute unless dimension minecraft:the_end run return fail

# Count armor pieces with Determination
execute store result score .previous aa.local run attribute @s minecraft:max_health base get
scoreboard players set .health aa.local 4

execute if items entity @s armor.feet *[minecraft:enchantments~[{enchantments:"aa:determination"}]] run scoreboard players add .health aa.local 4
execute if items entity @s armor.legs *[minecraft:enchantments~[{enchantments:"aa:determination"}]] run scoreboard players add .health aa.local 4
execute if items entity @s armor.chest *[minecraft:enchantments~[{enchantments:"aa:determination"}]] run scoreboard players add .health aa.local 4
execute if items entity @s armor.head *[minecraft:enchantments~[{enchantments:"aa:determination"}]] run scoreboard players add .health aa.local 4

# Set base health
scoreboard players operation .health aa.local < #20 aa.const
execute store result storage aa:io value int 1 run scoreboard players get .health aa.local
data modify storage aa:io attribute set value "minecraft:max_health"
function aa:util/attribute with storage aa:io

# Change effects
execute if score .health aa.local < .previous aa.local run playsound minecraft:entity.player.hurt player @s
execute if score .health aa.local < .previous aa.local run playsound minecraft:entity.enderman.hurt player @s
execute if score .health aa.local < .previous aa.local run playsound minecraft:entity.blaze.hurt player @s
execute if score .health aa.local < .previous aa.local run effect give @s minecraft:nausea 7 0 true

execute if score .health aa.local > .previous aa.local run playsound minecraft:item.honey_bottle.drink player @s
execute if score .health aa.local > .previous aa.local run effect clear @s minecraft:nausea

# Schedule next check
schedule function aa:mechanics/end/check_determination 10t replace
