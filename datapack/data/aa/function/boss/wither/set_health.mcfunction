execute if score #difficulty aa.const matches ..1 run function aa:util/health {health:300}
execute if score #difficulty aa.const matches 2 run function aa:util/health {health:450}
execute if score #difficulty aa.const matches 3.. run function aa:util/health {health:600}

attribute @s minecraft:scale base set 1.25
