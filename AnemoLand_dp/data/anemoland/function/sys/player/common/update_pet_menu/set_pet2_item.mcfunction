
data modify entity @s HandItems[0] set from storage temp:_ data.player_storage.pet.2

item replace entity @a[tag=player_check,limit=1] inventory.2 from entity @s weapon.mainhand

kill @s