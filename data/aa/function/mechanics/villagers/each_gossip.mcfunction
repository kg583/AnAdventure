data modify storage aa:io gossip set from storage aa:io old[0]

# Modifiers
function aa:mechanics/villagers/modifiers/nerf_curing
function aa:mechanics/villagers/modifiers/unforgivable

data remove storage aa:io old[0]
data modify storage aa:io new append from storage aa:io gossip
execute if data storage aa:io old run function aa:mechanics/villagers/each_gossip with storage aa:io
