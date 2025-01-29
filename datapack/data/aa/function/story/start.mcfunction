# Module starts
function aa:story/names/start

# Start chapters
data modify storage aa:story progress set value {chapter:1}
schedule function aa:story/chapters/beginning 8s replace
