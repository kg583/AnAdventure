data modify storage aa:mechanics/beacons Pos set value {}
data modify storage aa:mechanics/beacons Pos.x set from entity @s Pos[0]
data modify storage aa:mechanics/beacons Pos.y set from entity @s Pos[1]
data modify storage aa:mechanics/beacons Pos.z set from entity @s Pos[2]

advancement revoke @s only aa:mechanics/beacons/activate
