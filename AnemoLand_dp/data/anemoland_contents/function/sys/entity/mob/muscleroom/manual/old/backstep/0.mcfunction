tp @s ~ ~ ~ ~ ~
execute if score @s action_time matches ..20 if score @s action_way matches 0 run tp @s ~ ~ ~ ~4 ~
execute if score @s action_time matches ..20 if score @s action_way matches 1 run tp @s ~ ~ ~ ~-4 ~

execute if score @s action_time matches 5..25 run data modify storage temp:_ data.rot2vec set value {abs:0.6}
execute if score @s action_time matches 5..25 if score @s action_way matches 0 rotated ~ 0 facing ^1 ^ ^-1 run function anemoland:sys/entity/common/rot2vec/0
execute if score @s action_time matches 5..25 if score @s action_way matches 1 rotated ~ 0 facing ^-1 ^ ^-1 run function anemoland:sys/entity/common/rot2vec/0
execute if score @s action_time matches 5..25 if score @s action_way matches 2 rotated ~ 0 facing ^ ^ ^-1 run function anemoland:sys/entity/common/rot2vec/0
execute if score @s action_time matches 5..25 run data modify entity @s Motion set from storage temp:_ data.vec

execute if score @s action_time matches 60.. run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/backstep/end
