# Location
data modify storage aa:story raid set value {}
data modify storage aa:story raid merge from entity @s SelectedItem.components."minecraft:map_decorations"."+"

# Start time
scoreboard players operation #start aa.local = #gametime aa.const
scoreboard players add #start aa.local 168000
execute store result storage aa:story raid.start int 1.0 run scoreboard players get #start aa.local

schedule function aa:mechanics/raid/start 7d
