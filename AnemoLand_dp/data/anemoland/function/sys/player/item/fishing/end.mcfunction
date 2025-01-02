
tag @s remove fishing
scoreboard players reset @s action0
scoreboard players reset @s action_time

execute as @e[type=text_display,tag=fishing_bobber] if score @s player_id = #player_id temp run function anemoland:sys/player/item/fishing/kill_bobber
