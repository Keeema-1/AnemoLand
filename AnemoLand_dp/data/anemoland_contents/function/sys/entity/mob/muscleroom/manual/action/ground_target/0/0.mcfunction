
# 回転
    execute if score @s action_time matches ..20 run function anemoland:sys/entity/common/rotate/to_player/front/8
    execute if score @s action_time matches 21.. run function anemoland:sys/entity/common/rotate/to_player/front/4

# パーティクルやサウンド
    execute if score @s action_time matches 30..40 positioned ^ ^ ^2 run particle block{block_state:{Name:"dirt"}} ~ ~ ~ 0.5 0 0.5 1 3

execute if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/muscleroom/manual/action/ground_target/1/start
execute if entity @s[tag=angry] if score @s action_time matches 30.. run function anemoland_contents:sys/entity/mob/muscleroom/manual/action/ground_target/1/start
