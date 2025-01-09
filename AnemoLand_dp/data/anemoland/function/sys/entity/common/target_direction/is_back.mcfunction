#> anemoland:sys/entity/common/target_direction/is_back
#
# 実行者から見て @e[tag=hostile_target] がほぼ真後ろにいるかどうか
#
# @input
#   score #hostile_target.is_player temp
#       ターゲットがプレイヤーの場合、1にする
#       その場合はセレクタを@aにするため軽くなるはず
#
# @output
#   score #target_is_back temp
#       Trueなら1、Falseなら0
#
# @public

# ターゲットがプレイヤーの場合
    execute if score #hostile_target.is_player temp matches 1 run return run function anemoland:sys/entity/common/target_direction/player/is_back
# そうでない場合
    function anemoland:sys/entity/common/target_direction/mob/is_back
