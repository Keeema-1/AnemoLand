
# プレイヤーの方に回転
    execute if score @s action_time matches ..20 run function anemoland:sys/entity/common/rotate/to_player/front/3
    execute if score @s action_time matches ..20 run function anemoland:sys/entity/common/rotate/to_player/front/3
    execute if score @s action_time matches 21.. run tp @s ~ ~ ~ ~ ~

function anemoland:sys/entity/common/target_direction/is_frontside

data modify storage temp:_ data.motion set value {speed:0.1}
execute if score @s action_time matches ..20 facing ^ ^ ^-1 rotated ~ 0 run function anemoland:sys/entity/common/motion/0

execute if entity @s[tag=angry] if score @s action_time matches 30.. run function anemoland_contents:sys/entity/mob/squirrel_head/action/knock_tail/1/start

execute if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/squirrel_head/manual/action/knock_tail/1/start
