clear @s #anemoland:menu1[custom_data={menu:1b}]
item replace entity @s inventory.0 with knowledge_book[custom_data={menu:1b},custom_model_data=3,item_name='{"text":"戻る","color":"white"}']

execute unless score @s team matches 1 run item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},custom_model_data=103,item_name='{"text":"チーム1 に参加する"}',lore=[]]
execute if score @s team matches 1 run item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},custom_model_data=103,item_name='{"text":"チーム1 (参加中)","color":"aqua"}',lore=[]]
execute store result score #count temp if entity @a[scores={team=1}]
item modify entity @s inventory.1 anemoland:player_menu/team/append_member_count
execute if score #count temp matches 1.. run item modify entity @p[tag=player_check] inventory.1 anemoland:player_menu/team/append_member_header
execute as @a[scores={team=1}] run item modify entity @p[tag=player_check] inventory.1 anemoland:player_menu/team/append_name_to_lore

execute unless score @s team matches 2 run item replace entity @s inventory.2 with knowledge_book[custom_data={menu:1b},custom_model_data=103,item_name='{"text":"チーム2 に参加する"}',lore=[]]
execute if score @s team matches 2 run item replace entity @s inventory.2 with knowledge_book[custom_data={menu:1b},custom_model_data=103,item_name='{"text":"チーム2 (参加中)","color":"aqua"}',lore=[]]
execute store result score #count temp if entity @a[scores={team=2}]
item modify entity @s inventory.2 anemoland:player_menu/team/append_member_count
execute if score #count temp matches 1.. run item modify entity @p[tag=player_check] inventory.2 anemoland:player_menu/team/append_member_header
execute as @a[scores={team=2}] run item modify entity @p[tag=player_check] inventory.2 anemoland:player_menu/team/append_name_to_lore

execute unless score @s team matches 3 run item replace entity @s inventory.3 with knowledge_book[custom_data={menu:1b},custom_model_data=103,item_name='{"text":"チーム3 に参加する"}',lore=[]]
execute if score @s team matches 3 run item replace entity @s inventory.3 with knowledge_book[custom_data={menu:1b},custom_model_data=103,item_name='{"text":"チーム3 (参加中)","color":"aqua"}',lore=[]]
execute store result score #count temp if entity @a[scores={team=3}]
item modify entity @s inventory.3 anemoland:player_menu/team/append_member_count
execute if score #count temp matches 1.. run item modify entity @p[tag=player_check] inventory.3 anemoland:player_menu/team/append_member_header
execute as @a[scores={team=3}] run item modify entity @p[tag=player_check] inventory.3 anemoland:player_menu/team/append_name_to_lore

execute unless score @s team matches 4 run item replace entity @s inventory.4 with knowledge_book[custom_data={menu:1b},custom_model_data=103,item_name='{"text":"チーム4 に参加する"}',lore=[]]
execute if score @s team matches 4 run item replace entity @s inventory.4 with knowledge_book[custom_data={menu:1b},custom_model_data=103,item_name='{"text":"チーム4 (参加中)","color":"aqua"}',lore=[]]
execute store result score #count temp if entity @a[scores={team=4}]
item modify entity @s inventory.4 anemoland:player_menu/team/append_member_count
execute if score #count temp matches 1.. run item modify entity @p[tag=player_check] inventory.4 anemoland:player_menu/team/append_member_header
execute as @a[scores={team=4}] run item modify entity @p[tag=player_check] inventory.4 anemoland:player_menu/team/append_name_to_lore

item replace entity @s inventory.5 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
item replace entity @s inventory.6 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
item replace entity @s inventory.7 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
item replace entity @s inventory.8 with knowledge_book[custom_data={menu:1b},custom_model_data=2,item_name='{"text":""}']
