
function anemoland:sys/entity/common/target_direction/is_leftside

execute if score @s action_time matches ..20 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-3 ~
execute if score @s action_time matches ..20 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~3 ~

execute if score @s action_time matches 21.. if score @s action_way matches 0 run tp @s ~ ~ ~ ~ ~
execute if score @s action_time matches 21.. if score @s action_way matches 1 run tp @s ~ ~ ~ ~ ~

function anemoland:sys/entity/common/target_direction/is_frontside

data modify storage temp:_ data.motion set value {speed:0.1}
execute if score @s action_time matches ..20 facing ^ ^ ^-1 rotated ~ 0 run function anemoland:sys/entity/common/motion/0

execute if entity @s[tag=angry] if score @s action_time matches 30.. run function anemoland_contents:sys/entity/mob/squirrel_head/action/knock_tail/1/start

execute if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/squirrel_head/manual/action/knock_tail/1/start
