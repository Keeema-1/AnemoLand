#> anemoland_contents:sys/entity/mob/human1/manual/action/walk1/tick
#
# アクション walk1 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/human1/action/walk1/tick

# ターゲットが存在しなければ終了
    execute unless score #hostile_target.exist temp matches 1 run return run function anemoland_contents:sys/entity/mob/human1/action/walk1/end

# ターゲットの方を向く
    execute if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    execute unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..64,limit=1] feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# 前方に移動
    data modify storage temp:_ data.motion set value {speed:0.3}
    execute rotated ~ 20 run function anemoland:sys/entity/common/motion/0

# ある程度近づいたらkeep distanceへ
    execute if score #hostile_target.is_player temp matches 1 if entity @a[tag=hostile_target,sort=nearest,distance=..5,limit=1] run return run function anemoland_contents:sys/entity/mob/human1/action/keep_distance1/start
    execute unless score #hostile_target.is_player temp matches 1 if entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..5,limit=1] run return run function anemoland_contents:sys/entity/mob/human1/action/keep_distance1/start
