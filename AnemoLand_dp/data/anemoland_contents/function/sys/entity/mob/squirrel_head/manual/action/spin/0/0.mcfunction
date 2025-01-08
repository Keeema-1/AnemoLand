
# プレイヤーの方に回転
    execute if score @s action_time matches ..40 at @s run tp @s ~ ~ ~ ~ ~
    execute if score @s action_time matches 41..50 run function anemoland:sys/entity/common/rotate/to_player/front/2

execute if entity @s[tag=!angry] if score @s action_time matches 45 if score @s action_way matches 0 run function anemoland_contents:sys/entity/mob/squirrel_head/animation/spin_left2
execute if entity @s[tag=!angry] if score @s action_time matches 45 if score @s action_way matches 1 run function anemoland_contents:sys/entity/mob/squirrel_head/animation/spin_right2

execute if entity @s[tag=angry] if score @s action_time matches 40 if score @s action_way matches 0 run function anemoland_contents:sys/entity/mob/squirrel_head/animation/spin_left2
execute if entity @s[tag=angry] if score @s action_time matches 40 if score @s action_way matches 1 run function anemoland_contents:sys/entity/mob/squirrel_head/animation/spin_right2

execute if entity @s[tag=angry] if score @s action_time matches 45.. run return run function anemoland_contents:sys/entity/mob/squirrel_head/manual/action/spin/1/start

execute if score @s action_time matches 50.. run return run function anemoland_contents:sys/entity/mob/squirrel_head/manual/action/spin/1/start
