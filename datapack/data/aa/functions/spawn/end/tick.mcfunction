# End city phantoms
execute store result score aa.spawn.end.phantom rand run random value 0..1000
execute if score aa.spawn.end.phantom cooldown matches 1.. run scoreboard players remove aa.spawn.end.phantom cooldown 1
execute if score aa.spawn.end.phantom cooldown matches 0 if score aa.spawn.end.phantom rand matches 0 run function aa:spawn/end/phantom/spawn
