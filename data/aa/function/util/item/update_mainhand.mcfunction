data modify storage aa:io components set value {}
$execute if items entity @s weapon.mainhand $(item)[$(test)] run data modify storage aa:io components set from entity @s SelectedItem.components
$execute if items entity @s weapon.mainhand $(item)[$(test)] run function $(directory)/modifier
