execute at @s run fill ~-9 ~-9 ~-9 ~9 ~9 ~9 minecraft:water replace #aa:monument_air destroy

title @s actionbar {translate:"text.aa.invalid_block"}

advancement revoke @s only aa:mechanics/misc/monument_air
