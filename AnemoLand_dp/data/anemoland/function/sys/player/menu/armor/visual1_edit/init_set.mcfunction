
data modify storage temp:_ data.ArmorItems_temp set value [{},{},{},{}]

execute if data storage temp:_ data.player_storage.equipments.visual_armor1.head.count run data modify storage temp:_ data.ArmorItems_temp[3] set from storage temp:_ data.player_storage.equipments.visual_armor1.head
execute if data storage temp:_ data.player_storage.equipments.visual_armor1.chest.count run data modify storage temp:_ data.ArmorItems_temp[2] set from storage temp:_ data.player_storage.equipments.visual_armor1.chest
execute if data storage temp:_ data.player_storage.equipments.visual_armor1.legs.count run data modify storage temp:_ data.ArmorItems_temp[1] set from storage temp:_ data.player_storage.equipments.visual_armor1.legs
execute if data storage temp:_ data.player_storage.equipments.visual_armor1.feet.count run data modify storage temp:_ data.ArmorItems_temp[0] set from storage temp:_ data.player_storage.equipments.visual_armor1.feet

data modify entity @s ArmorItems set from storage temp:_ data.ArmorItems_temp

execute if data storage temp:_ data.player_storage.equipments.visual_armor1.head.count run item replace entity @a[tag=player_check] inventory.1 from entity @s armor.head
execute if data storage temp:_ data.player_storage.equipments.visual_armor1.chest.count run item replace entity @a[tag=player_check] inventory.3 from entity @s armor.chest
execute if data storage temp:_ data.player_storage.equipments.visual_armor1.legs.count run item replace entity @a[tag=player_check] inventory.5 from entity @s armor.legs
execute if data storage temp:_ data.player_storage.equipments.visual_armor1.feet.count run item replace entity @a[tag=player_check] inventory.7 from entity @s armor.feet

kill @s