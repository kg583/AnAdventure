# Select random block
$data modify storage aa:io weights set value $(weights)
execute store success score .place local run function aa:util/random/weighted

execute if score .place local matches 0 run return fail

# Place block
data modify storage aa:io mode set value "replace"
data modify storage aa:io block set from storage aa:io element
function aa:util/place_block with storage aa:io
