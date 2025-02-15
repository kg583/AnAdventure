# Revoke clear call
schedule clear aa:enchantment/truesight/clear
advancement revoke @s only aa:enchantment/truesight

# Set up callbacks
data modify storage aa:io after set value "enchantment/truesight/schedule"
data modify storage aa:io during set value "enchantment/truesight/schedule"
function aa:util/raycast with storage aa:io
