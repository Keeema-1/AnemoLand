
# ターゲットの方に回転
    execute if score @s action_time matches ..20 if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_leftside
    execute if score @s action_time matches ..20 unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_leftside
    execute if score @s action_time matches ..20 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-2 ~
    execute if score @s action_time matches ..20 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~2 ~

# 回転をやめる
    execute if score @s action_time matches 21..40 run tp @s ~ ~ ~ ~ ~

# 走り始める
    execute if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/boar/manual/action/tackle/1/start