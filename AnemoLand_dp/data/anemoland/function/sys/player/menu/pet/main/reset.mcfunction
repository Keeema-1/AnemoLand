clear @s #anemoland:menu1[custom_data={menu:1b}]

item replace entity @s inventory.0 with knowledge_book[custom_data={menu:1b},custom_model_data=3,item_name='{"text":"戻る","color":"white"}']

execute if score @s area2 matches 1.. run function anemoland:sys/player/menu/pet/main/reset_field
execute unless score @s area2 matches 1.. run function anemoland:sys/player/menu/pet/main/reset_village

item replace entity @s inventory.4 with knowledge_book[custom_data={menu:1b},custom_model_data=2,hide_tooltip={}]
item replace entity @s inventory.5 with knowledge_book[custom_data={menu:1b},custom_model_data=2,hide_tooltip={}]
item replace entity @s inventory.6 with knowledge_book[custom_data={menu:1b},custom_model_data=2,hide_tooltip={}]
item replace entity @s inventory.7 with knowledge_book[custom_data={menu:1b},custom_model_data=2,hide_tooltip={}]
item replace entity @s inventory.8 with knowledge_book[custom_data={menu:1b},custom_model_data=2,hide_tooltip={}]
