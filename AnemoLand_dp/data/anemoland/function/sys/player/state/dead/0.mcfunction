#> anemoland:sys/player/state/dead/0
#
# 死亡中の処理
#
# @within function anemoland:sys/player/state/0

# リスポーン検知
    execute if entity @e[type=player,tag=player_check] run function anemoland:sys/player/respawn
