# 最初のヒット：ジャンプする

# 浮遊効果があれば終了
    execute if predicate anemoland:effect/leviation run return 1

# 武器技スコアをセット
# 数tickにわたって処理される技はスコアを使用して管理する
    scoreboard players set @s action0 2
    scoreboard players set @s action1 1
    scoreboard players reset @s action_time

# パーティクルやサウンド
    playsound minecraft:entity.firework_rocket.launch player @a ~ ~ ~ 2 1

# 上昇
    effect give @s levitation 1 30 true

# ゲージを消費しない
    scoreboard players set #gauge_consume temp 0
