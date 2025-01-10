
tp @s ~ ~ ~ ~ ~

data modify storage temp:_ data.vec set value [0.0d,0.0d,0.0d]

execute if score @s action_time matches ..10 if score @s action_way matches 1 run data modify storage temp:_ data.rot2vec set value {abs:0.6}
execute if score @s action_time matches ..10 if score @s action_way matches 2 run data modify storage temp:_ data.rot2vec set value {abs:0.6}
execute if score @s action_time matches ..10 if score @s action_way matches 3 run data modify storage temp:_ data.rot2vec set value {abs:0.9}
execute if score @s action_time matches ..10 if score @s action_way matches 4 run data modify storage temp:_ data.rot2vec set value {abs:1.2}
execute if score @s action_time matches ..10 if score @s action_way matches 0 run data modify storage temp:_ data.rot2vec set value {abs:1.5}

execute if score @s action_time matches 11..20 if score @s action_way matches 1 run data modify storage temp:_ data.rot2vec set value {abs:0.4}
execute if score @s action_time matches 11..20 if score @s action_way matches 2 run data modify storage temp:_ data.rot2vec set value {abs:0.4}
execute if score @s action_time matches 11..20 if score @s action_way matches 3 run data modify storage temp:_ data.rot2vec set value {abs:0.6}
execute if score @s action_time matches 11..20 if score @s action_way matches 4 run data modify storage temp:_ data.rot2vec set value {abs:0.8}
execute if score @s action_time matches 11..20 if score @s action_way matches 0 run data modify storage temp:_ data.rot2vec set value {abs:1.0}

execute if score @s action_time matches 21..30 if score @s action_way matches 1 run data modify storage temp:_ data.rot2vec set value {abs:0.2}
execute if score @s action_time matches 21..30 if score @s action_way matches 2 run data modify storage temp:_ data.rot2vec set value {abs:0.2}
execute if score @s action_time matches 21..30 if score @s action_way matches 3 run data modify storage temp:_ data.rot2vec set value {abs:0.3}
execute if score @s action_time matches 21..30 if score @s action_way matches 4 run data modify storage temp:_ data.rot2vec set value {abs:0.4}
execute if score @s action_time matches 21..30 if score @s action_way matches 0 run data modify storage temp:_ data.rot2vec set value {abs:0.5}

execute if score @s action_time matches 2 as @a[distance=..64] at @s run playsound minecraft:entity.wind_charge.wind_burst hostile @s ~ ~ ~ 4 0
execute if score @s action_time matches 13..15 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 4 0

execute if score @s action_time matches ..30 run execute rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0

data modify entity @s Motion set from storage temp:_ data.vec

execute if score @s action_time matches 5..25 run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/punch/attack

execute if score @s action_time matches 100.. run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/punch/1/end
execute if entity @s[tag=angry] if score @s action_time matches 80.. run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/punch/1/end
