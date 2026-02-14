scoreboard players set #major_negative aa.local 0
execute store result score #major_negative aa.local run data get storage aa:io gossip{Type:"major_negative"}

execute if score #major_negative aa.local matches ..75 run return fail
data modify storage aa:io gossip.Value set value 100
