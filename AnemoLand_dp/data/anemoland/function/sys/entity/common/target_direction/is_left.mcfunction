#> anemoland:sys/entity/common/target_direction/is_left
#
# 実行者から見て @e[tag=hostile_target] がほぼ真左にいるかどうか
#
# @input
#   score #hostile_target.is_player temp
#       ターゲットがプレイヤーの場合、1にする
#       その場合はセレクタを@aにするため軽くなるはず
#
# @output
#   score #target_is_left temp
#       Trueなら1、Falseなら0
#
# @public

# ターゲットがプレイヤーの場合
    execute if score #hostile_target.is_player temp matches 1 run return run function anemoland:sys/entity/common/target_direction/player/is_left
# そうでない場合
    function anemoland:sys/entity/common/target_direction/mob/is_left
