# Select random almanac
data modify storage aa:io type set from storage aa:io components."minecraft:custom_data".aa.type
function aa:loot/book/get with storage aa:io
function aa:util/random/uniform with storage aa:io

data modify storage aa:io element.slot set from storage aa:io slot
function aa:loot/book/replace with storage aa:io element
