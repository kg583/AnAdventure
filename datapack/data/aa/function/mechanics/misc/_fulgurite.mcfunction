# Select random block
$data modify storage aa:io weights set value $(weights)
execute store success score .place aa.local run function aa:util/random/weighted

execute if score .place aa.local matches 0 run return fail

# Place block
data modify storage aa:io mode set value "replace"
data modify storage aa:io block set from storage aa:io element
function aa:util/block/set with storage aa:io
