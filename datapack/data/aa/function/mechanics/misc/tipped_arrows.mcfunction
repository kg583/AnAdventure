tag @s add aa.tipped_arrow
execute summon area_effect_cloud at @s run function aa:mechanics/misc/tipped_arrow_cloud

data remove entity @s item
tag @s remove aa.tipped_arrow
