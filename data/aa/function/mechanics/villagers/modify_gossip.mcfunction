# Track repeated curings
scoreboard players set #major_positives aa.local 0

# Modify each gossip individually
data modify storage aa:io old set from entity @s Gossips
function aa:mechanics/villagers/each_gossip with storage aa:io
data modify entity @s Gossips set from storage aa:io new
