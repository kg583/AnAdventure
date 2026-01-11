summon minecraft:wither_skeleton ~ ~ ~1 {Tags:["aa.wither.reinforcement","smithed.entity"]}
summon minecraft:wither_skeleton ~ ~ ~-1 {Tags:["aa.wither.reinforcement","smithed.entity"]}

execute if score #difficulty aa.const matches 2.. run summon minecraft:wither_skeleton ~1 ~ ~ {Tags:["aa.wither.reinforcement","smithed.entity"]}
execute if score #difficulty aa.const matches 3.. run summon minecraft:wither_skeleton ~-1 ~ ~ {Tags:["aa.wither.reinforcement","smithed.entity"]}