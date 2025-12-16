# Scoreboard
scoreboard objectives add aa.cooldown dummy
scoreboard objectives add aa.const dummy
scoreboard objectives add aa.io dummy
scoreboard objectives add aa.local dummy
scoreboard objectives add aa.rand dummy

# Module starts
function aa:util/start

function aa:loot/start
function aa:mechanics/start

# Start the adventure
execute if data storage aa:story progress run return fail
data modify storage aa:story progress set value {chapter:1}
schedule function aa:chapter/beginning 7s replace
