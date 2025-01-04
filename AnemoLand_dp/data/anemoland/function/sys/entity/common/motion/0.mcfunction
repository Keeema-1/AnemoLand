#> anemoland:sys/entity/common/motion/0
#
# 実行者に向いている方向のMotionを与える
#
# @input
#   storage temp:_
#       data.motion.speed
#           与えるモーションの強さ
#
# @public

# 方向と強さからMotionを計算
    execute if data storage temp:_ data.motion.speed positioned 0. 0. 0. summon marker run function anemoland:sys/entity/common/motion/00 with storage temp:_ data.motion

# Motionを上書き
    data modify entity @s Motion set from storage temp:_ data.motion.result

# 一時的なデータを削除
    data remove storage temp:_ data.motion
