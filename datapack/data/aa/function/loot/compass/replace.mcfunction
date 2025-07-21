$item replace entity @s $(slot) with minecraft:compass[minecraft:lodestone_tracker={target:{pos:$(pos),dimension:"$(dimension)"},tracked:false}]
playsound minecraft:block.respawn_anchor.charge master @s
