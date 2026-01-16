execute if data storage aa:story progress run return fail

# Scoreboard
scoreboard objectives add aa.time dummy
scoreboard objectives add aa.const dummy
scoreboard objectives add aa.disabled dummy
scoreboard objectives add aa.io dummy
scoreboard objectives add aa.local dummy
scoreboard objectives add aa.rand dummy

# Config
title @a times 20t 70t 20t

# Module inits
function #aa:init

# Start the adventure
data modify storage aa:story progress set value {chapter:1}
schedule function aa:chapter/beginning 7s replace
