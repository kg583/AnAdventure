scoreboard players operation .sq aa.local = .sqrt aa.io
scoreboard players operation .sq aa.local += .digit aa.local
scoreboard players operation .sq aa.local *= .sq aa.local
execute if score .sq aa.local <= .num aa.io run scoreboard players operation .sqrt aa.io += .digit aa.local

scoreboard players operation .digit aa.local /= #2 aa.const
execute if score .digit aa.local matches 1.. run function aa:util/math/_sqrt
