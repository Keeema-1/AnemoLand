execute unless score @s sneak_time matches 1.. unless entity @a[tag=!player_check] run return run title @s actionbar [{"text": "スニークでフィールドに移動","color": "yellow"}]

scoreboard players set #members temp 0
execute at @e[type=text_display,tag=area_info,tag=active,tag=!skip,tag=!player_exist,distance=..3.5] as @a[distance=..4] run scoreboard players add #members temp 1
execute if score #members temp matches 5.. run scoreboard players set #members temp 4

execute unless score @s sneak_time matches 1.. run return run title @s actionbar [{"text": "スニークでフィールドに移動 (参加者：","color": "yellow"},{"score":{"name":"#members","objective":"temp"}},{"text": "人)","color": "yellow"}]
execute if score @s sneak_time matches 1..2 run return run title @s actionbar [{"text": "■■","color": "yellow"},{"text": "■■■■■■■■■■■■■■■■■","color": "white"}]
execute if score @s sneak_time matches 3..4 run return run title @s actionbar [{"text": "■■■■","color": "yellow"},{"text": "■■■■■■■■■■■■■■■","color": "white"}]
execute if score @s sneak_time matches 5..6 run return run title @s actionbar [{"text": "■■■■■■","color": "yellow"},{"text": "■■■■■■■■■■■■■","color": "white"}]
execute if score @s sneak_time matches 7..8 run return run title @s actionbar [{"text": "■■■■■■■■","color": "yellow"},{"text": "■■■■■■■■■■■","color": "white"}]
execute if score @s sneak_time matches 9..10 run return run title @s actionbar [{"text": "■■■■■■■■■■","color": "yellow"},{"text": "■■■■■■■■■","color": "white"}]
execute if score @s sneak_time matches 11..12 run return run title @s actionbar [{"text": "■■■■■■■■■■■■","color": "yellow"},{"text": "■■■■■■■","color": "white"}]
execute if score @s sneak_time matches 13..14 run return run title @s actionbar [{"text": "■■■■■■■■■■■■■■","color": "yellow"},{"text": "■■■■■","color": "white"}]
execute if score @s sneak_time matches 15..16 run return run title @s actionbar [{"text": "■■■■■■■■■■■■■■■■","color": "yellow"},{"text": "■■■","color": "white"}]
execute if score @s sneak_time matches 17..18 run return run title @s actionbar [{"text": "■■■■■■■■■■■■■■■■■■","color": "yellow"},{"text": "■","color": "white"}]
execute if score @s sneak_time matches 19.. run return run title @s actionbar [{"text": "■■■■■■■■■■■■■■■■■■■","color": "yellow"},{"text": "","color": "white"}]

