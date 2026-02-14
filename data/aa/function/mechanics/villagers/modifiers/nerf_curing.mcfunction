scoreboard players set #minor_positive aa.local 0
execute store result score #minor_positive aa.local run data get storage aa:io gossip{Type:"minor_positive"}

execute if score #minor_positive aa.local matches ..15 run return fail
data modify storage aa:io gossip.Value set value 10
