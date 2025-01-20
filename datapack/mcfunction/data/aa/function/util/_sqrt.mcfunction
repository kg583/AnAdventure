scoreboard players operation .sq local = .sqrt io
scoreboard players operation .sq local += .digit local
scoreboard players operation .sq local *= .sq local
execute if score .sq local <= .num io run scoreboard players operation .sqrt io += .digit local

scoreboard players operation .digit local /= #2 const
execute if score .digit local matches 1.. run function aa:util/_sqrt
