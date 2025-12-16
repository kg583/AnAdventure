effect clear @s minecraft:resistance
tag @s remove aa.skyfall
tag @s add aa.in_end

# Set gravity
attribute @s minecraft:gravity base set 0.05
attribute @s minecraft:fall_damage_multiplier base set 0.625

function aa:mechanics/end/check_defenses
