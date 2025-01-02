
# 一時的にコメントアウト
    # execute if score @s dropped.carrot_on_a_stick matches 1.. run function anemoland:sys/player/item/weapon/drop/0

    # execute if data storage temp:_ data.player_data.Inventory[{Slot:-106b}] run function anemoland:sys/player/item/offhand/0

    # execute if score @s used.carrot_on_a_stick matches 1.. run function anemoland:sys/player/item/action/0

    # execute if score @s dropped.knowledge_book matches 1.. run function anemoland:sys/player/item/drop_menu_item

    # execute if score @s action0 matches 1.. run function anemoland:sys/player/item/weapon/attack_skill/action

    # execute if entity @s[tag=fishing] run function anemoland:sys/player/item/fishing/0

execute store result score #selected_item_slot temp run data get entity @s SelectedItemSlot
execute unless score @s selected_item_slot = #selected_item_slot temp run function anemoland:sys/player/item/change_slot
