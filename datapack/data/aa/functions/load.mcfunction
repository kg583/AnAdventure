# Scoreboard
scoreboard objectives add const dummy
scoreboard objectives add once dummy
scoreboard objectives add var dummy

scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy

# PRNG
scoreboard players set aa.prng.mult const 16383
scoreboard players set aa.prng.max const 131071

# Gamerules
gamerule doInsomnia false

# Module loads
function aa:mechanics/load
function aa:story/load

# Finish
tellraw @a [{"text":"AnAdventure","color":"aqua"},{"text":" successfully loaded.","color":"white"}]