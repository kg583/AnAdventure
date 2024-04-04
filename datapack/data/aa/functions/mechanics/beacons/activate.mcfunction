data modify storage aa:mechanics/beacons SpawnPos set value {}
data modify storage aa:mechanics/beacons SpawnPos.x set from entity @s Pos[0]
data modify storage aa:mechanics/beacons SpawnPos.y set from entity @s Pos[1]
data modify storage aa:mechanics/beacons SpawnPos.z set from entity @s Pos[2]

advancement revoke @s only aa:mechanics/beacons/activate
