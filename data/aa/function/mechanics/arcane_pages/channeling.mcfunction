execute if items entity @s weapon.mainhand minecraft:enchanted_book[minecraft:custom_data~{enchantment:"minecraft:channeling"}] run function aa:mechanics/arcane_pages/enchant {slot:"mainhand",enchantment:"minecraft:channeling"}
execute if items entity @s weapon.offhand minecraft:enchanted_book[minecraft:custom_data~{enchantment:"minecraft:channeling"}] run function aa:mechanics/arcane_pages/enchant {slot:"offhand",enchantment:"minecraft:channeling"}

advancement revoke @s only aa:mechanics/arcane_pages/channeling
