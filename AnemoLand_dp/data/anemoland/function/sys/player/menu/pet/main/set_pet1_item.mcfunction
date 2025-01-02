
data modify entity @s HandItems[0] set from storage temp:_ data.pet_item

item replace entity @a[tag=player_check,limit=1] inventory.1 from entity @s weapon.mainhand

kill @s

# tellraw @a[tag=player_check] {"storage":"temp:_","nbt":"data.pet_item.components.\"minecraft:custom_data\""}

# tellraw @a[tag=player_check] {"entity":"@s","nbt":"HandItems[0].components.\"minecraft:custom_data\""}

# tellraw @a[tag=player_check] {"entity":"@a[tag=player_check,limit=1]","nbt":"Inventory[{Slot:10b}].components.\"minecraft:custom_data\""}
