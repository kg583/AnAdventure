data merge entity @s {CustomName:{"fallback":"N/A","translate":"version.aa.number"}}
execute if entity @s[name="N/A"] run tellraw @a [{text:"\nIt looks like the accompanying ",color:"white"},{text:"resource pack",color:"gold"},{text:" is missing.\nMake sure it is enabled in the Resource Pack menu."},{text:"\nThen run ",color:"white"},{text:"/reload",color:"green",click_event:{action:"suggest_command",command:"/reload"}},{text:" to reload the data pack.",color:"white"}]

kill @s
