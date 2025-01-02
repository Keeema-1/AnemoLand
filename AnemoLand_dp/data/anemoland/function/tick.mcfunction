#> anemoland:tick
#
# tick時に実行される
#
# @within tag/function minecraft:tick

# 各プレイヤーのtick処理
    execute as @a at @s run function anemoland:sys/player/tick

# 後処理
    data remove storage temp:_ data
    scoreboard players reset * temp

# ログイン検知用
    scoreboard players reset * exist
    scoreboard players set @a exist 1
