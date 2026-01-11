# Playtime scale
scoreboard players operation #difficulty aa.local = #day aa.const
scoreboard players operation #difficulty aa.local /= #7 aa.const
scoreboard players add #difficulty aa.local 1

# Difficulty scale
scoreboard players operation #scale aa.local = #difficulty aa.const
scoreboard players operation #cap aa.local = #scale aa.local
scoreboard players operation #cap aa.local *= #10 aa.const
execute if score #difficulty aa.const matches 3 run scoreboard players add #cap aa.local 10

scoreboard players operation #difficulty aa.local *= #scale aa.local
scoreboard players operation #difficulty aa.local < #cap aa.local

# Moon fluctuations
execute if score #moon aa.const matches 1..2 run scoreboard players remove #difficulty aa.local 1
execute if score #moon aa.const matches 4..6 run scoreboard players add #difficulty aa.local 1
execute if score #moon aa.const matches 5 run scoreboard players add #difficulty aa.local 1

scoreboard players operation #difficulty aa.local > #0 aa.const
