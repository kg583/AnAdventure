execute if block ~ ~ ~ minecraft:water if items entity @s weapon.mainhand minecraft:enchanted_book[minecraft:custom_data~{enchantment:"minecraft:aqua_affinity"}] run function aa:mechanics/arcane_pages/enchant {slot:"mainhand",enchantment:"minecraft:aqua_affinity"}
execute if block ~ ~ ~ minecraft:water if items entity @s weapon.offhand minecraft:enchanted_book[minecraft:custom_data~{enchantment:"minecraft:aqua_affinity"}] run function aa:mechanics/arcane_pages/enchant {slot:"offhand",enchantment:"minecraft:aqua_affinity"}

advancement revoke @s only aa:mechanics/arcane_pages/aqua_affinity
