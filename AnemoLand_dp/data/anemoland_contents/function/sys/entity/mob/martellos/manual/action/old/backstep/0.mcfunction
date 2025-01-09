tp @s ~ ~ ~ ~ ~
execute if score @s action_time matches ..25 run data modify storage temp:_ data.rot2vec set value {abs:0.4}
execute if score @s action_time matches ..25 run execute rotated ~ 0 facing ^ ^ ^-1 run function anemoland:sys/entity/common/rot2vec/0
execute if score @s action_time matches ..25 run data modify entity @s Motion set from storage temp:_ data.vec

execute if score @s action_time matches 46.. run function anemoland_contents:sys/entity/mob/martellos/tick/action/backstep/end
