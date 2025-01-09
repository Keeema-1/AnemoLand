#> anemoland_contents:sys/entity/mob/spider/manual/action/walk/tick
#
# アクション walk 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/spider/action/walk/tick

# ターゲットがいなければ終了
    execute unless score #hostile_target.exist temp matches 1 run return run function anemoland_contents:sys/entity/mob/spider/action/walk/end
# プレイヤーの方を向く
    execute if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    execute unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# ジャンプ
    execute if score @s action_time matches 10.. if predicate anemoland:random_chance/0_05 if score #hostile_target.is_player temp matches 1 if entity @a[tag=hostile_target,sort=nearest,distance=..8,limit=1] rotated ~ 0 run return run function anemoland_contents:sys/entity/mob/spider/action/jump/start
    execute if score @s action_time matches 10.. if predicate anemoland:random_chance/0_05 unless score #hostile_target.is_player temp matches 1 if entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..8,limit=1] rotated ~ 0 run return run function anemoland_contents:sys/entity/mob/spider/action/jump/start

# 移動
    data modify storage temp:_ data.motion set value {speed:0.2}
    # 近いときは離れる
        execute if score #hostile_target.is_player temp matches 1 if entity @a[tag=hostile_target,sort=nearest,distance=..6,limit=1] run data modify storage temp:_ data.motion set value {speed:-0.05}
        execute unless score #hostile_target.is_player temp matches 1 if entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..6,limit=1] run data modify storage temp:_ data.motion set value {speed:-0.05}
    execute at @s rotated ~ 0 run function anemoland:sys/entity/common/motion/0

