
data modify storage temp:_ data.ArmorItems_temp set value [{},{},{},{}]
data modify storage temp:_ data.HandItems_temp set value [{},{}]

execute if data storage temp:_ data.player_storage.equipments.armor3.head.count run data modify storage temp:_ data.ArmorItems_temp[3] set from storage temp:_ data.player_storage.equipments.armor3.head
execute if data storage temp:_ data.player_storage.equipments.armor3.chest.count run data modify storage temp:_ data.ArmorItems_temp[2] set from storage temp:_ data.player_storage.equipments.armor3.chest
execute if data storage temp:_ data.player_storage.equipments.armor3.legs.count run data modify storage temp:_ data.ArmorItems_temp[1] set from storage temp:_ data.player_storage.equipments.armor3.legs
execute if data storage temp:_ data.player_storage.equipments.armor3.feet.count run data modify storage temp:_ data.ArmorItems_temp[0] set from storage temp:_ data.player_storage.equipments.armor3.feet
execute if data storage temp:_ data.player_storage.equipments.armor3.amulet1.count run data modify storage temp:_ data.HandItems_temp[0] set from storage temp:_ data.player_storage.equipments.armor3.amulet1

data modify entity @s ArmorItems set from storage temp:_ data.ArmorItems_temp
data modify entity @s HandItems set from storage temp:_ data.HandItems_temp

execute if data storage temp:_ data.player_storage.equipments.armor3.head.count run item replace entity @p[tag=player_check] inventory.1 from entity @s armor.head
execute if data storage temp:_ data.player_storage.equipments.armor3.chest.count run item replace entity @p[tag=player_check] inventory.2 from entity @s armor.chest
execute if data storage temp:_ data.player_storage.equipments.armor3.legs.count run item replace entity @p[tag=player_check] inventory.3 from entity @s armor.legs
execute if data storage temp:_ data.player_storage.equipments.armor3.feet.count run item replace entity @p[tag=player_check] inventory.4 from entity @s armor.feet
execute if data storage temp:_ data.player_storage.equipments.armor3.amulet1.count run item replace entity @p[tag=player_check] inventory.5 from entity @s weapon.mainhand

kill @s