
# 回転
    execute if score @s action_time matches ..20 run function anemoland:sys/entity/common/rotate/to_player/front/8
    execute if score @s action_time matches 21..30 run function anemoland:sys/entity/common/rotate/to_player/front/4
    execute if score @s action_time matches 31.. at @s run tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 45.. run function anemoland_contents:sys/entity/mob/ojinushi/manual/action/punch/1/start
execute if entity @s[tag=angry] if score @s action_time matches 35.. run function anemoland_contents:sys/entity/mob/ojinushi/manual/action/punch/1/start
