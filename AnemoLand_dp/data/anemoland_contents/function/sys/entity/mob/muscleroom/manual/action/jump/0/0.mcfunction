
# 回転
    execute if score @s action_time matches ..20 run function anemoland:sys/entity/common/rotate/to_player/front/8
    execute if score @s action_time matches 21.. run function anemoland:sys/entity/common/rotate/to_player/front/4

execute if score @s action_time matches 30.. run function anemoland_contents:sys/entity/mob/muscleroom/manual/action/jump/1/start