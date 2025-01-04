#> anemoland:sys/player/area/entrance/00
#
# スニーク段階に応じてアクションバーを表示
# ゲームを開始
#
# @within function anemoland:sys/player/area/entrance/0

# スニーク段階に応じてアクションバーを表示
    execute unless score @s sneak_time matches 1.. run title @s actionbar {"translate": "anemoland.general.sneak_to_start_game","color": "yellow"}
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

# ゲームを開始
    execute if score @s sneak_time matches 20.. run function anemoland:sys/player/area/entrance/game_start/0