execute if entity @s[advancements={aa:quest/ocean/coral=true}] run return fail
function aa:util/block/place {block:"#c:corals",directory:"aa:quest/ocean/coral"}

advancement revoke @s only aa:quest/ocean/coral/place
