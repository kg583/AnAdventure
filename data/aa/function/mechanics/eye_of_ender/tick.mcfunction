# Destroy thrown eyes
execute as @e[type=minecraft:eye_of_ender] at @s run function aa:mechanics/eye_of_ender/each

# Update use remainder
execute as @a if data entity @s SelectedItem{id:"minecraft:ender_eye"} run function aa:mechanics/eye_of_ender/each_update
