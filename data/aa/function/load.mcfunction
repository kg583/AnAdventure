# Set load status
scoreboard players set #aa load.status 1

# Initialize static data and tick schedules
function aa:init
schedule clear aa:tick
schedule function aa:tick 1t

tellraw @a [{text:"AnAdventure",color:"aqua"},{text:" successfully loaded.",color:"white"}]

# Check for resource pack
execute summon minecraft:marker run function aa:check_resource_pack
