#> anemoland_contents:sys/entity/mob/bagikeros/manual/action/fire_head/tick
#
# アクション fire_head 中に実行される
# このファイルは初回のみ自動生成される
# アクション中の処理をこの下に記述
#
# @within function anemoland_contents:sys/entity/mob/bagikeros/action/fire_head/tick

# 分岐する場合
    execute if score @s action1 matches 0 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/fire_head/0/0
    execute if score @s action1 matches 1 run function anemoland_contents:sys/entity/mob/bagikeros/manual/action/fire_head/1/0
# 終了
    execute if score @s action_time matches 100.. run function anemoland_contents:sys/entity/mob/bagikeros/action/fire_head/end
