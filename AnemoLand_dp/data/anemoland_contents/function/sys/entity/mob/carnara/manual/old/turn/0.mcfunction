
data modify storage temp:_ data.rot2vec set value {abs:0.05}
execute if score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^10 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
execute unless score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^10 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
data modify entity @s Motion set from storage temp:_ data.vec

execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_front
execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_front

execute if score @s action_time matches ..49 if score #target_is_front temp matches 1 run return 1

execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_leftside
execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_leftside

execute if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-4 ~
execute unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~4 ~

execute if score @s action_time matches 50.. run function anemoland_contents:sys/entity/mob/carnara/manual/action/turn/end
