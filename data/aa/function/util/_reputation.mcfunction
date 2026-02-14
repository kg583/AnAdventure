data modify storage aa:io gossip set from storage aa:io gossips[0]

# Gossip types
execute if data storage aa:io gossip{Type:"major_negative"} run scoreboard players set #mult aa.local -5
execute if data storage aa:io gossip{Type:"minor_negative"} run scoreboard players set #mult aa.local -1
execute if data storage aa:io gossip{Type:"major_positive"} run scoreboard players set #mult aa.local 5
execute if data storage aa:io gossip{Type:"minor_positive"} run scoreboard players set #mult aa.local 1
execute if data storage aa:io gossip{Type:"trading"} run scoreboard players set #mult aa.local 1

execute store result score #addend aa.local run data get storage aa:io gossip.Value
scoreboard players operation #addend aa.local *= #mult aa.local
$execute if data storage aa:io gossip{UUID:$(uuid)} run scoreboard players operation #reputation aa.local += #addend aa.local

# Recurse
data remove storage aa:io gossips[0]
execute if data storage aa:io gossips run function aa:util/_reputation with storage aa:io
