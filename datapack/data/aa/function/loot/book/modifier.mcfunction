# Select random almanac
data modify storage aa:io type set from storage aa:io custom_data.type
function aa:loot/book/get with storage aa:io
function aa:util/random/uniform with storage aa:io

data modify storage aa:io author set from storage aa:io element.author
data modify storage aa:io title set from storage aa:io element.title
data modify storage aa:io pages set from storage aa:io element.pages
function aa:loot/book/replace with storage aa:io
