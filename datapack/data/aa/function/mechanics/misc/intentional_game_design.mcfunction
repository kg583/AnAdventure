execute at @s if dimension minecraft:overworld run fill ~-9 ~-9 ~-9 ~9 ~9 ~9 minecraft:air replace #c:intentional_game_design/overworld destroy
execute at @s if dimension minecraft:the_nether run fill ~-9 ~-9 ~-9 ~9 ~9 ~9 minecraft:air replace #c:intentional_game_design/the_nether destroy
execute at @s if dimension minecraft:the_end run fill ~-9 ~-9 ~-9 ~9 ~9 ~9 minecraft:air replace #c:intentional_game_design/the_end destroy

title @s actionbar {translate:"text.aa.invalid_block"}

advancement revoke @s only aa:mechanics/misc/intentional_game_design
