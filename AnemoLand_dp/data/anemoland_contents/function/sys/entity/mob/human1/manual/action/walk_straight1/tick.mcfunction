#> anemoland_contents:sys/entity/mob/human1/manual/action/walk_straight1/tick
#
# アクション walk_straight1 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/human1/action/walk_straight1/tick

# 移動
    data modify storage temp:_ data.motion set value {speed:0.25}
    execute rotated ~ 0 run function anemoland:sys/entity/common/motion/0

# 終了
    execute if score @s action_time matches 60.. run return run function anemoland_contents:sys/entity/mob/human1/action/walk_straight1/end
    execute if score @s action_time matches 20.. if score #hostile_target.is_player temp matches 1 unless entity @a[tag=hostile_target,sort=nearest,distance=..8,limit=1] run return run function anemoland_contents:sys/entity/mob/human1/action/walk_straight1/end
    execute if score @s action_time matches 20.. unless score #hostile_target.is_player temp matches 1 unless entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..8,limit=1] run return run function anemoland_contents:sys/entity/mob/human1/action/walk_straight1/end

