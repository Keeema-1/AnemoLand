
execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_leftside
execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_leftside

execute if score @s action_time matches ..20 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-3 ~
execute if score @s action_time matches ..20 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~3 ~

execute if score @s action_time matches 21..40 if score @s action_way matches 0 run tp @s ~ ~ ~ ~ ~
execute if score @s action_time matches 21..40 if score @s action_way matches 1 run tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 41.. if score @s action_way matches 0 run tp @s ~ ~ ~ ~-4 ~
execute if score @s action_time matches 41.. if score @s action_way matches 1 run tp @s ~ ~ ~ ~4 ~

execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_frontside
execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_frontside

data modify storage temp:_ data.rot2vec set value {abs:0.1}
execute if score @s action_time matches ..20 facing ^ ^ ^-1 rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
execute if score @s action_time matches ..20 run data modify entity @s Motion set from storage temp:_ data.vec

# data modify storage temp:_ data.rot2vec set value {abs:0.4}
# execute if score @s action_time matches 41..45 rotated ~-10 0 run function anemoland:sys/entity/common/rot2vec/0
# execute if score @s action_time matches 41..45 run data modify entity @s Motion set from storage temp:_ data.vec
# execute if score @s action_time matches 46..50 rotated ~-30 0 run function anemoland:sys/entity/common/rot2vec/0
# execute if score @s action_time matches 46..50 run data modify entity @s Motion set from storage temp:_ data.vec

data modify storage temp:_ data.rot2vec set value {abs:0.15}
execute if score @s action_time matches 41.. if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
execute if score @s action_time matches 41.. unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#rpg:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
execute if score @s action_time matches 41.. run data modify entity @s Motion set from storage temp:_ data.vec

execute if entity @s[tag=!angry] if score @s action_time matches 40 if score @s action_way matches 0 run function rpg:sys/entity/mob/martellos/animation/spin_left2
execute if entity @s[tag=!angry] if score @s action_time matches 40 if score @s action_way matches 1 run function rpg:sys/entity/mob/martellos/animation/spin_right2

execute if entity @s[tag=angry] if score @s action_time matches 30 if score @s action_way matches 0 run function rpg:sys/entity/mob/martellos/animation/spin_left2
execute if entity @s[tag=angry] if score @s action_time matches 30 if score @s action_way matches 1 run function rpg:sys/entity/mob/martellos/animation/spin_right2

execute if entity @s[tag=angry] if score @s action_time matches 50.. run function rpg:sys/entity/mob/martellos/tick/action/12_spin/1_spin/start

execute if score @s action_time matches 60.. run function rpg:sys/entity/mob/martellos/tick/action/12_spin/1_spin/start
