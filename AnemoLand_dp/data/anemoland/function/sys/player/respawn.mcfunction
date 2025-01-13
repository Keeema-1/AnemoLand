#> anemoland:sys/player/respawn
#
# リスポーン時の処理
#
# @within
#    function anemoland:sys/player/state/dead/0

# ステータス効果のリセット
    function anemoland:sys/player/reset

# 死亡回数スコアをリセット
    scoreboard players reset @s death_count

function anemoland:sys/player/music/stop

execute if score @s area2 matches 9901.. run return run function anemoland:command/enter/arena_prepare
execute unless score @s area2 matches 9901.. run return run function anemoland:command/enter/village
