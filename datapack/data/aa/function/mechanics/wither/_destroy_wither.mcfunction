# Effects
particle minecraft:damage_indicator ~ ~ ~ 1 1 1 1 100 force
tp @s ~ -128 ~
data modify entity @s Health set value 0s

# Text
execute store result score .message rand run random value 1..5
execute if score .message rand matches 1 run tellraw @a[distance=..32] {"translate":"text.aa.invalid_wither_summon.1","italic":true,"color":"dark_red"}
execute if score .message rand matches 2 run tellraw @a[distance=..32] {"translate":"text.aa.invalid_wither_summon.2","italic":true,"color":"dark_red"}
execute if score .message rand matches 3 run tellraw @a[distance=..32] {"translate":"text.aa.invalid_wither_summon.3","italic":true,"color":"dark_red"}
execute if score .message rand matches 4 run tellraw @a[distance=..32] {"translate":"text.aa.invalid_wither_summon.4","italic":true,"color":"dark_red"}
execute if score .message rand matches 5 run tellraw @a[distance=..32] {"translate":"text.aa.invalid_wither_summon.5","italic":true,"color":"dark_red"}
