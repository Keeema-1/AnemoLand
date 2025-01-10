
execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_frontside
execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_frontside

execute if score @s action_way matches 1 if score @s action_time matches ..10 if score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~6 ~
execute if score @s action_way matches 1 if score @s action_time matches ..10 unless score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~-6 ~
execute if score @s action_way matches 1 if score @s action_time matches 11..20 if score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~3 ~
execute if score @s action_way matches 1 if score @s action_time matches 11..20 unless score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~-3 ~

execute if score @s action_way matches 0 if score @s action_time matches ..10 if score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~-6 ~
execute if score @s action_way matches 0 if score @s action_time matches ..10 unless score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~6 ~
execute if score @s action_way matches 0 if score @s action_time matches 11..20 if score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~-3 ~
execute if score @s action_way matches 0 if score @s action_time matches 11..20 unless score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~3 ~

execute if score @s action_time matches 21.. at @s run tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches ..20 run data modify storage temp:_ data.rot2vec set value {abs:0.2}
execute if score @s action_way matches 1 if score #hostile_target.is_player temp matches 1 rotated ~-90 0 positioned ^ ^ ^8 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
execute if score @s action_way matches 1 unless score #hostile_target.is_player temp matches 1 rotated ~-90 0 positioned ^ ^ ^8 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
execute if score @s action_way matches 0 if score #hostile_target.is_player temp matches 1 rotated ~90 0 positioned ^ ^ ^8 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
execute if score @s action_way matches 0 unless score #hostile_target.is_player temp matches 1 rotated ~90 0 positioned ^ ^ ^8 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
execute if score @s action_time matches ..20 run data modify entity @s Motion set from storage temp:_ data.vec

execute if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/bite_side/1/start
execute if entity @s[tag=angry] if score @s action_time matches 35.. run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/bite_side/1/start
