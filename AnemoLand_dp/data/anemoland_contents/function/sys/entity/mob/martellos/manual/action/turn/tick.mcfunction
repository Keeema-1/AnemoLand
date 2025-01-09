#> anemoland_contents:sys/entity/mob/martellos/manual/action/turn/tick
#
# アクション turn 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/martellos/action/turn/tick

# 移動
    data modify storage temp:_ data.motion set value {speed:0.05}
    execute if score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^6 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    execute unless score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^6 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0

# プレイヤーの方に回転
    function anemoland:sys/entity/common/rotate/to_player/front/8

execute if score @s action_time matches 30.. run function anemoland_contents:sys/entity/mob/martellos/action/turn/end
