function aa:util/item/modify {item:"#minecraft:enchantable/durability[minecraft:enchantments={aa:unyielding=1,minecraft:mending=1,minecraft:unbreaking=3}]",modifier:"aa:enchantment/unbreakable"}
playsound entity.player.levelup player @s

advancement revoke @s only aa:enchantment/unbreakable
