function aa:mechanics/misc/trample
$execute unless block ~ ~ ~ #aa:evoker_bomb_safe summon minecraft:tnt run data merge entity @s {block_state:{Name:"minecraft:gray_wool"},explosion_power:3.0,fuse:2,owner:$(UUID),Tags:["aa.evoker_bomb","smithed.entity","smithed.strict"]}
