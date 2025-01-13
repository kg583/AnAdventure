# Effects
particle minecraft:damage_indicator ~ ~ ~ 1 1 1 1 100 force
tp @s ~ -128 ~
data modify entity @s Health set value 0s

# Text
execute store result score aa.mechanics.wither rand run random value 1..4
execute if score aa.mechanics.wither rand matches 1 run tellraw @a[distance=..32] {"text":"This dimension is not my own...","italic":true,"color":"dark_red"}
execute if score aa.mechanics.wither rand matches 2 run tellraw @a[distance=..32] {"text":"I cannot manifest in this place...","italic":true,"color":"dark_red"}
execute if score aa.mechanics.wither rand matches 3 run tellraw @a[distance=..32] {"text":"I must be summoned in the realm of fire...","italic":true,"color":"dark_red"}
execute if score aa.mechanics.wither rand matches 4 run tellraw @a[distance=..32] {"text":"This place is not fit for my being...","italic":true,"color":"dark_red"}
