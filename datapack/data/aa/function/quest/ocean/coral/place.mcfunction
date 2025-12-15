execute if entity @s[advancements={aa:quest/ocean/coral=true}] run return fail

data merge storage aa:io {block:"#c:corals",callback:"aa:quest/ocean/coral/setup"}
function aa:util/block/detect

advancement revoke @s only aa:quest/ocean/coral/place
