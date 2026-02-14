$summon minecraft:tnt ~ ~ ~ {block_state:{Name:"minecraft:gray_wool"},explosion_power:3.0,fuse:2,owner:$(UUID),Tags:["aa.evoker_bomb","smithed.entity","smithed.strict"]}
scoreboard players set @e[tag=!smithed.entity,distance=..2,type=minecraft:evoker_fangs] aa.time 1
