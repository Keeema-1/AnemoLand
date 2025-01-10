#> anemoland_contents:sys/entity/mob/carnara/manual/action/turn/tick
#
# アクション turn 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/carnara/action/turn/tick

data modify storage temp:_ data.motion set value {speed:0.05}
execute if score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^10 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
execute unless score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^10 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0

function anemoland:sys/entity/common/target_direction/is_front

execute if score @s action_time matches ..49 if score #target_is_front temp matches 1 run return 1

# プレイヤーの方に回転
    function anemoland:sys/entity/common/rotate/to_player/front/5

execute if score @s action_time matches 50.. run function anemoland_contents:sys/entity/mob/carnara/action/turn/end
