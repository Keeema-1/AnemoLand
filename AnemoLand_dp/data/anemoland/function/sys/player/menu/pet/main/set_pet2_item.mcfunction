
data modify entity @s HandItems[0] set from storage temp:_ data.pet_item

item replace entity @a[tag=player_check,limit=1] inventory.2 from entity @s weapon.mainhand

kill @s