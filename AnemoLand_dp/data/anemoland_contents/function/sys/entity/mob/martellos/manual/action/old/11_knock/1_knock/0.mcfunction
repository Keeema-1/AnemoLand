
data modify storage temp:_ data.rot2vec set value {abs:0.1}
execute if score @s action_time matches ..5 if score #hostile_target.is_player temp matches 1 unless entity @a[tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.rot2vec set value {abs:0.5}
execute if score @s action_time matches ..5 unless score #hostile_target.is_player temp matches 1 unless entity @e[type=#rpg:mob_core,tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.rot2vec set value {abs:0.5}
execute if score @s action_time matches 6..10 if score #hostile_target.is_player temp matches 1 unless entity @a[tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.rot2vec set value {abs:0.3}
execute if score @s action_time matches 6..10 unless score #hostile_target.is_player temp matches 1 unless entity @e[type=#rpg:mob_core,tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.rot2vec set value {abs:0.3}
# execute if score @s action_time matches 11.. run data modify storage temp:_ data.rot2vec set value {abs:0.2}
execute if score @s action_time matches ..10 rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
execute if score @s action_time matches ..10 run data modify entity @s Motion set from storage temp:_ data.vec
execute if score @s action_way matches 0 if score @s action_time matches ..15 run tp @s ~ ~ ~ ~0.5 ~
execute if score @s action_way matches 1 if score @s action_time matches ..15 run tp @s ~ ~ ~ ~-0.5 ~

execute if score @s action_time matches 10 rotated ~ 0 positioned ^ ^ ^2 run function rpg:sys/entity/mob/martellos/tick/action/11_knock/1_knock/particle
execute if score @s action_time matches 10 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 1

execute if score @s action_time matches 2..10 run function rpg:sys/entity/mob/martellos/tick/action/11_knock/attack

execute if score @s action_time matches 20.. run function rpg:sys/entity/mob/martellos/tick/action/11_knock/2_cooltime/start
