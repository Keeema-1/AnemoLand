
execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_leftside
execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_leftside

execute if score @s action_time matches ..20 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-2 ~
execute if score @s action_time matches ..20 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~2 ~

execute if score @s action_time matches 21..40 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-1 ~
execute if score @s action_time matches 21..40 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~1 ~

data modify storage temp:_ data.rot2vec set value {abs:0.15}
execute if score @s action_time matches ..40 facing ^ ^ ^-1 rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
execute if score @s action_time matches ..40 run data modify entity @s Motion set from storage temp:_ data.vec

execute if entity @s[tag=angry] if score @s action_time matches 30.. run function rpg:sys/entity/mob/martellos/tick/action/dash/1_dash/start

execute if score @s action_time matches 40.. run function rpg:sys/entity/mob/martellos/tick/action/dash/1_dash/start
