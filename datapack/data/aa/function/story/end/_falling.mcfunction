# Landed?
execute if entity @s[nbt={OnGround:1b}] run return run function aa:story/end/landed

# Still falling
function aa:story/end/platform
effect give @s minecraft:resistance infinite 126 true
