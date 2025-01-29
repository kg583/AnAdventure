execute unless items entity @s armor.* *[minecraft:enchantments~[{enchantments:"minecraft:fire_protection"}]] unless entity @s[nbt={active_effects:[{id:"minecraft:fire_resistance"}]}] run function aa:mechanics/nether/burn_player
schedule function aa:mechanics/nether/check_fire_protection 4s replace
