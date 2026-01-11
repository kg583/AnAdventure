execute if block ~1 ~ ~ minecraft:end_portal_frame positioned ~1 ~ ~ run return run function aa:structure/stronghold/orient
execute if block ~ ~ ~1 minecraft:end_portal_frame positioned ~ ~ ~1 run return run function aa:structure/stronghold/orient
execute if block ~1 ~ ~1 minecraft:end_portal_frame positioned ~1 ~ ~1 run return run function aa:structure/stronghold/orient
execute if block ~ ~ ~ minecraft:end_portal_frame[eye=true] run setblock ~ ~ ~ minecraft:end_portal_frame[eye=false,facing=west]
execute align xyz positioned ~1 ~1 ~2 run function aa:structure/stronghold/seal_portal
