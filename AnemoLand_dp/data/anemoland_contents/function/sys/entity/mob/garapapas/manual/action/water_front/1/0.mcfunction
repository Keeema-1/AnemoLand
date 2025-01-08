
# プレイヤーの方に回転
    execute if score @s action_time matches ..10 run function anemoland:sys/entity/common/rotate/to_player/front/2
    execute if score @s action_time matches 11.. at @s run tp @s ~ ~ ~ ~ ~

# 発射
    execute if score @s action_time matches 10 rotated ~ ~ positioned ^ ^4 ^6 run function anemoland_contents:sys/entity/mob/garapapas/manual/action/water_front/launch

execute if score @s action_time matches 90.. run function anemoland_contents:sys/entity/mob/garapapas/action/water_front/end
