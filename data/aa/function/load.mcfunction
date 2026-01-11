scoreboard players set #aa load.status 1

function aa:init
schedule clear aa:tick
schedule function aa:tick 1t

tellraw @a [{text:"AnAdventure",color:"aqua"},{text:" successfully loaded.",color:"white"}]
