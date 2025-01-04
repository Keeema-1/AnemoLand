# 重複防止のため、一番近いプレイヤーからのみ実行
    execute as @p unless entity @s[tag=player_check] run return 1

execute if entity @s[tag=sell] run function anemoland:sys/player/area/common/village/chest_menu/sell/0

execute if entity @s[tag=power_up] run function anemoland:sys/player/area/common/village/chest_menu/power_up/0
