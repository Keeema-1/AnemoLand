#> anemoland:sys/player/respawn
#
# リスポーン時の処理
#
# @within
#    function anemoland:sys/player/state/dead/0

# function anemoland:sys/player/area/demo2/village/34/enter/0

# ステータス効果のリセット
    function anemoland:sys/player/reset

# 死亡回数スコアをリセット
    scoreboard players reset @s death_count

# function anemoland:sys/player/area/common/enter

# function anemoland:sys/player/music/stop