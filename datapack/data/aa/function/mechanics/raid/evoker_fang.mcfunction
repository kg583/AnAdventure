$summon minecraft:tnt ~ ~ ~ {block_state:{Name:"minecraft:gray_wool"},explosion_power:3.0,fuse:2,owner:$(UUID),Tags:["aa.evoker_bomb","smithed.entity","smithed.strict"]}
scoreboard players set @e[type=minecraft:evoker_fangs,tag=!smithed.entity,distance=..2] aa.cooldown 1
