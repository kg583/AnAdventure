# Get random offset
$execute store result storage aa:io x int 1.0 run random value $(x_min)..$(x_max)
$execute store result storage aa:io y int 1.0 run random value $(y_min)..$(y_max)
$execute store result storage aa:io z int 1.0 run random value $(z_min)..$(z_max)

function aa:util/random/_spread with storage aa:io
