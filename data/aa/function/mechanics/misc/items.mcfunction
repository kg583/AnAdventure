tag @s add aa.item

# Invulnerable items
execute if data entity @s Item{id:"minecraft:dragon_egg"} run return run function aa:mechanics/misc/each_invulnerable
execute if data entity @s Item{id:"minecraft:elytra"} run return run function aa:mechanics/misc/each_invulnerable
execute if data entity @s Item{id:"minecraft:enchanted_golden_apple"} run return run function aa:mechanics/misc/each_invulnerable
execute if data entity @s Item{id:"minecraft:ender_eye"} run return run function aa:mechanics/misc/each_invulnerable
execute if data entity @s Item{id:"minecraft:nether_star"} run return run function aa:mechanics/misc/each_invulnerable

execute if data entity @s Item{id:"minecraft:netherite_scrap"} run return run function aa:mechanics/misc/each_invulnerable
execute if data entity @s Item{id:"minecraft:netherite_helmet"} run return run function aa:mechanics/misc/each_invulnerable
execute if data entity @s Item{id:"minecraft:netherite_chestplate"} run return run function aa:mechanics/misc/each_invulnerable
execute if data entity @s Item{id:"minecraft:netherite_leggings"} run return run function aa:mechanics/misc/each_invulnerable
execute if data entity @s Item{id:"minecraft:netherite_boot"} run return run function aa:mechanics/misc/each_invulnerable

execute if data entity @s Item{id:"minecraft:totem_of_undying"} run return run function aa:mechanics/misc/each_invulnerable
execute if data entity @s Item{id:"minecraft:recovery_compass"} if data entity @s Item.components."minecraft:item_model" run return run function aa:mechanics/misc/each_invulnerable
