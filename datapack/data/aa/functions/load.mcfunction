# Scoreboard
scoreboard objectives add const dummy
scoreboard objectives add rand dummy
scoreboard objectives add var dummy

# Gamerules
gamerule doInsomnia false

# Module loads
function aa:mechanics/load
function aa:spawn/load
function aa:story/load

# Finish
tellraw @a [{"text":"AnAdventure","color":"aqua"},{"text":" successfully loaded.","color":"white"}]
