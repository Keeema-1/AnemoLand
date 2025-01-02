scoreboard players operation @s selected_item_slot = #selected_item_slot temp

scoreboard players reset @s action0
scoreboard players reset @s action1
scoreboard players reset @s action_time

effect clear @s levitation

title @s actionbar ""

function anemoland:sys/player/common/update_attack_status/0
