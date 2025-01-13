execute summon minecraft:marker run tag @s add aa.spawn.end.endermite
spreadplayers ~ ~ 0 25 under 90 true @e[tag=aa.spawn.end.endermite]
execute at @e[tag=aa.spawn.end.endermite] positioned ~1 ~ ~ run summon minecraft:endermite
execute at @e[tag=aa.spawn.end.endermite] positioned ~-1 ~ ~ run summon minecraft:endermite
execute at @e[tag=aa.spawn.end.endermite] positioned ~1 ~ ~1 run summon minecraft:endermite
execute at @e[tag=aa.spawn.end.endermite] positioned ~-2 ~ ~ run summon minecraft:endermite
execute at @e[tag=aa.spawn.end.endermite] positioned ~ ~ ~-1 run summon minecraft:endermite
execute at @e[tag=aa.spawn.end.endermite] positioned ~ ~ ~1 run summon minecraft:endermite
kill @e[tag=aa.spawn.end.endermite]
schedule function aa:spawn/end/endermite/cooldown 120s append
