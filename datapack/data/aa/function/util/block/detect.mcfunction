execute store result score .dist aa.local run attribute @s minecraft:block_interaction_range get
scoreboard players operation .dist aa.local += .dist aa.local
return run function aa:util/block/_detect with storage aa:io
