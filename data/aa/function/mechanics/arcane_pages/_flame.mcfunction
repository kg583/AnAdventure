execute as @a[advancements={aa:mechanics/arcane_pages/flame=true}] at @s if block ~ ~ ~ minecraft:lava if block ~ ~1 ~ minecraft:lava if items entity @s weapon.mainhand minecraft:enchanted_book[minecraft:custom_data~{enchantment:"minecraft:flame"}] run function aa:mechanics/arcane_pages/enchant {slot:"mainhand",enchantment:"minecraft:flame"}
execute as @a[advancements={aa:mechanics/arcane_pages/flame=true}] at @s if block ~ ~ ~ minecraft:lava if block ~ ~1 ~ minecraft:lava if items entity @s weapon.offhand minecraft:enchanted_book[minecraft:custom_data~{enchantment:"minecraft:flame"}] run function aa:mechanics/arcane_pages/enchant {slot:"offhand",enchantment:"minecraft:flame"}

advancement revoke @a only aa:mechanics/arcane_pages/flame
