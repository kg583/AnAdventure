advancement revoke @s only aa:structure/sword_in_the_stone/pull
execute if predicate aa:structure/sword_in_the_stone/has_strength run return run function aa:structure/sword_in_the_stone/give

data merge storage aa:io {max:3,key:"text.aa.sword_in_the_stone.pull",text:{color:"gray",italic:true},targets:"@p"}

function aa:util/random/text with storage aa:io
function aa:util/tellraw with storage aa:io
