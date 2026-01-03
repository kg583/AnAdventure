# Landed?
execute if entity @s[nbt={OnGround:1b}] run return run function aa:mechanics/end/landed

# Still falling
execute in minecraft:the_end run function aa:mechanics/end/platform
effect give @s minecraft:resistance infinite 126 true
