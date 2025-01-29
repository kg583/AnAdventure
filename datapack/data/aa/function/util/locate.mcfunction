execute store result score .x io run data get entity @s Pos[0]
execute store result score .z io run data get entity @s Pos[2]
function aa:util/locate/find with storage aa:io

tellraw @a [{"text":"Found structure at "},{"score":{"name":".x","objective":"io"}},{"text":" "},{"score":{"name":".z","objective":"io"}}]
