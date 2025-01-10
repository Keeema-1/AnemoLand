
# 回転
    execute if score @s action_time matches ..10 run function anemoland:sys/entity/common/rotate/to_player/front/4
    execute if score @s action_time matches 11.. at @s run tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 10.. run function anemoland_contents:sys/entity/mob/ojinushi/manual/action/sidestep/1/start
