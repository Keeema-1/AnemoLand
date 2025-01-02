clear @s #anemoland:menu1[custom_data={menu:1b}]
item replace entity @s inventory.0 with knowledge_book[custom_data={menu:1b},custom_model_data=21,item_name='{"translate":"menu.status"}']
function anemoland:sys/player/menu/main/update_status/0
item replace entity @s inventory.1 with knowledge_book[custom_data={menu:1b},custom_model_data=101,item_name='{"translate":"menu.pet"}']
item replace entity @s inventory.2 with knowledge_book[custom_data={menu:1b},custom_model_data=104,item_name='{"translate":"menu.equipment"}']
item replace entity @s inventory.3 with knowledge_book[custom_data={menu:1b},custom_model_data=52,item_name='{"text":"依頼"}',lore=['{"text":"  (仮)","color":"gray","italic":false}']]

item replace entity @s inventory.4 with knowledge_book[custom_data={menu:1b},custom_model_data=103,item_name='{"translate":"menu.team"}']
execute if score @s team matches 1.. run item modify entity @s inventory.4 anemoland:player_menu/team/append_team
execute if score @s team matches 1.. run item modify entity @s inventory.4 anemoland:player_menu/team/append_member_header
scoreboard players operation #team temp = @s team
execute as @a[scores={team=1..}] if score @s team = #team temp run item modify entity @p[tag=player_check] inventory.4 anemoland:player_menu/team/append_name_to_lore

item replace entity @s inventory.5 with knowledge_book[custom_data={menu:1b},custom_model_data=14,item_name='{"text":"会話"}',lore=['{"text":"  (仮)","color":"gray","italic":false}']]
item replace entity @s inventory.6 with knowledge_book[custom_data={menu:1b},custom_model_data=28,item_name='{"text":"ニュース"}',lore=['{"text":"  (仮)","color":"gray","italic":false}']]
item replace entity @s inventory.7 with knowledge_book[custom_data={menu:1b},custom_model_data=27,item_name='{"translate":"menu.tp"}']
item replace entity @s inventory.8 with knowledge_book[custom_data={menu:1b},custom_model_data=102,item_name='{"translate":"menu.settings"}',lore=['{"text":"  AnemoLand ver.Beta-0.4","color":"aqua","italic":false}']]
