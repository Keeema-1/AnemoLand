
execute if score @s action_time matches ..10 run data modify storage temp:_ data.motion set value {speed:0.2}
execute if score @s action_time matches 11..20 run data modify storage temp:_ data.motion set value {speed:0.1}
execute if score @s action_time matches 21.. run data modify storage temp:_ data.motion set value {speed:0.05}
execute if score @s action_time matches ..10 rotated ~ 180 run function anemoland:sys/entity/common/motion/0
execute if score @s action_time matches 11..20 if score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^4 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
execute if score @s action_time matches 11..20 unless score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^4 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0

execute if score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/player/is_frontside
execute unless score #hostile_target.is_player temp matches 1 run function anemoland:sys/entity/common/target_direction/mob/is_frontside

# execute if score @s action_time matches ..10 at @s run tp @s ~ ~ ~ ~ ~
execute if score @s action_way matches 0 if score @s action_time matches ..20 if score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~4 ~
execute if score @s action_way matches 0 if score @s action_time matches ..20 unless score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~-4 ~
execute if score @s action_way matches 0 if score @s action_time matches 21..30 if score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~2 ~
execute if score @s action_way matches 0 if score @s action_time matches 21..30 unless score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~-2 ~
execute if score @s action_way matches 1 if score @s action_time matches ..20 if score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~-4 ~
execute if score @s action_way matches 1 if score @s action_time matches ..20 unless score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~4 ~
execute if score @s action_way matches 1 if score @s action_time matches 21..30 if score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~-2 ~
execute if score @s action_way matches 1 if score @s action_time matches 21..30 unless score #target_is_frontside temp matches 1 at @s run tp @s ~ ~ ~ ~2 ~
execute if score @s action_time matches 31.. at @s run tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/squirrel_head/manual/action/bite_side/1/start
execute if entity @s[tag=angry] if score @s action_time matches 35.. run function anemoland_contents:sys/entity/mob/squirrel_head/manual/action/bite_side/1/start
