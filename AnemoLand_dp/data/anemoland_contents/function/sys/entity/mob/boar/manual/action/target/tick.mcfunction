#> anemoland_contents:sys/entity/mob/boar/manual/action/target/tick
#
# アクション target 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/boar/action/target/tick

# 衝突処理
    execute unless entity @s[tag=damaged] if predicate anemoland:random_chance/0_2 run function anemoland:sys/entity/common/collide/1

# ターゲットが存在しなければ停止
    execute unless score #hostile_target.exist temp matches 1 run return run function anemoland_contents:sys/entity/mob/boar/action/stop/start

# ターゲットの方向を確認
    execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_leftside
    execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_front
    execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_leftside
    execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_front

# ターゲットの向きに応じて回転
    execute if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-2 ~
    execute unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~2 ~

# ターゲットが正面に来たらタックル開始
    execute if score #target_is_front temp matches 1 run function anemoland_contents:sys/entity/mob/boar/action/tackle/start
