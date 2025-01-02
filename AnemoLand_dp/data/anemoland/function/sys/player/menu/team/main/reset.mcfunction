clear @s #anemoland:menu1[custom_data={menu:1b}]
item replace entity @s inventory.0 with knowledge_book[custom_data={menu:1b},custom_model_data=3,item_name='{"text":"戻る","color":"white"}']

tag @s add me
scoreboard players operation #team temp = @s team
execute unless score @s team matches 1.. run loot replace entity @s inventory.1 loot anemoland:menu/player_head
execute if score @s team matches 1.. run item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
execute if score @s team matches 1.. as @a[scores={member=1}] if score @s team = #team temp run loot replace entity @p[tag=me] inventory.1 loot anemoland:menu/player_head

item replace entity @s inventory.2 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
execute as @a[scores={member=2}] if score @s team = #team temp run loot replace entity @p[tag=me] inventory.2 loot anemoland:menu/player_head

item replace entity @s inventory.3 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
execute as @a[scores={member=3}] if score @s team = #team temp run loot replace entity @p[tag=me] inventory.3 loot anemoland:menu/player_head

item replace entity @s inventory.4 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
execute as @a[scores={member=4}] if score @s team = #team temp run loot replace entity @p[tag=me] inventory.4 loot anemoland:menu/player_head

tag @s remove me

item replace entity @s inventory.5 with knowledge_book[custom_data={menu:1b},custom_model_data=37,item_name='{"text":"チームを探す"}']
item replace entity @s inventory.6 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
# item replace entity @s inventory.6 with knowledge_book[custom_data={menu:1b},custom_model_data=120,item_name='{"text":"チームから退出"}']
item replace entity @s inventory.7 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
execute if data storage temp:_ data.player_storage.supporters.1{id:"girl2"} run item replace entity @s inventory.7 with knowledge_book[custom_data={menu:1b},custom_model_data=201,item_name='{"text":"サリー","italic":false}',lore=['{"text":"  助っ人","italic":false,"color":"aqua"}']]
item replace entity @s inventory.8 with knowledge_book[custom_data={menu:1b},custom_model_data=103,item_name='{"text":"助っ人を呼ぶ"}']
