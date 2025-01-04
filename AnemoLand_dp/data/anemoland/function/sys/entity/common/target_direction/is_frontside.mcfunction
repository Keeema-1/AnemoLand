#> anemoland:sys/entity/common/target_direction/is_frontside
#
# 実行者から見て @e[tag=hostile_target] が前側にいるかどうか
#
# @input
#   score #hostile_target.is_player temp
#       ターゲットがプレイヤーの場合、1にする
#       その場合はセレクタを@aにするため軽くなるはず
#
# @output
#   score #target_is_frontside temp
#       Trueなら1、Falseなら0
#
# @public

# ターゲットがプレイヤーの場合
    execute if score #hostile_target.is_player temp matches 1 run return run function anemoland:sys/entity/common/target_direction/player/is_frontside
# そうでない場合
    function anemoland:sys/entity/common/target_direction/mob/is_frontside
