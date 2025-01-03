# 重複防止のため、一番近いプレイヤーからのみ実行
    execute as @p unless entity @s[tag=player_check] run return 1

execute if entity @s[tag=sell] run function anemoland:sys/player/area/common/village/chest_menu/sell/0
