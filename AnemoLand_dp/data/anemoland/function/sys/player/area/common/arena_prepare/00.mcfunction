execute unless score @s sneak_time matches 1.. run title @s actionbar {"translate": "anemoland.general.sneak_to_start_battle","color": "yellow"}
execute if score @s sneak_time matches 1..2 run title @s actionbar [{"text": "■■","color": "yellow"},{"text": "■■■■■■■■■■■■■■■■■","color": "white"}]
execute if score @s sneak_time matches 3..4 run title @s actionbar [{"text": "■■■■","color": "yellow"},{"text": "■■■■■■■■■■■■■■■","color": "white"}]
execute if score @s sneak_time matches 5..6 run title @s actionbar [{"text": "■■■■■■","color": "yellow"},{"text": "■■■■■■■■■■■■■","color": "white"}]
execute if score @s sneak_time matches 7..8 run title @s actionbar [{"text": "■■■■■■■■","color": "yellow"},{"text": "■■■■■■■■■■■","color": "white"}]
execute if score @s sneak_time matches 9..10 run title @s actionbar [{"text": "■■■■■■■■■■","color": "yellow"},{"text": "■■■■■■■■■","color": "white"}]
execute if score @s sneak_time matches 11..12 run title @s actionbar [{"text": "■■■■■■■■■■■■","color": "yellow"},{"text": "■■■■■■■","color": "white"}]
execute if score @s sneak_time matches 13..14 run title @s actionbar [{"text": "■■■■■■■■■■■■■■","color": "yellow"},{"text": "■■■■■","color": "white"}]
execute if score @s sneak_time matches 15..16 run title @s actionbar [{"text": "■■■■■■■■■■■■■■■■","color": "yellow"},{"text": "■■■","color": "white"}]
execute if score @s sneak_time matches 17..18 run title @s actionbar [{"text": "■■■■■■■■■■■■■■■■■■","color": "yellow"},{"text": "■","color": "white"}]
execute if score @s sneak_time matches 19.. run title @s actionbar [{"text": "■■■■■■■■■■■■■■■■■■■","color": "yellow"},{"text": "","color": "white"}]

execute if score @s sneak_time matches 20.. run function anemoland:sys/player/area/common/arena_prepare/start/0
