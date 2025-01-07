
function anemoland:sys/entity/common/target_direction/is_leftside

execute if score @s action_time matches ..10 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~8 ~
execute if score @s action_time matches ..10 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-8 ~

execute if score @s action_time matches 11..40 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~6 ~
execute if score @s action_time matches 11..40 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-6 ~

execute if score @s action_time matches 41.. at @s run tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 53..55 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 1 0
execute if score @s action_time matches 58 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 0.5 1.5
execute if score @s action_time matches 53 rotated ~ 0 positioned ^ ^ ^-6 run function anemoland_contents:sys/entity/mob/squirrel_head/manual/action/knock_tail/1/particle
# execute if score @s action_time matches 52..60 run function anemoland_contents:sys/entity/mob/squirrel_head/tick/action/spin_tail/attack
execute if score @s action_time matches 54..56 run function anemoland_contents:sys/entity/mob/squirrel_head/attack/spin/0

execute if score @s action_time matches ..10 unless score #hostile_target.is_player temp matches 1 unless entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.motion set value {speed:0.1}
execute if score @s action_time matches ..10 if score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^-7 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
execute if score @s action_time matches ..10 unless score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^-7 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 25..35 if score #hostile_target.is_player temp matches 1 unless entity @a[tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.motion set value {speed:0.7}
execute if score @s action_time matches 25..35 unless score #hostile_target.is_player temp matches 1 unless entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.motion set value {speed:0.7}
execute if score @s action_time matches 36..45 if score #hostile_target.is_player temp matches 1 unless entity @a[tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.motion set value {speed:0.3}
execute if score @s action_time matches 36..45 unless score #hostile_target.is_player temp matches 1 unless entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.motion set value {speed:0.3}
execute if score @s action_time matches 46..55 if score #hostile_target.is_player temp matches 1 unless entity @a[tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.motion set value {speed:0.15}
execute if score @s action_time matches 46..55 unless score #hostile_target.is_player temp matches 1 unless entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..4,limit=1] run data modify storage temp:_ data.motion set value {speed:0.15}
execute if score @s action_time matches 25..55 run execute rotated ~180 5 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 130.. run return run function anemoland_contents:sys/entity/mob/squirrel_head/action/knock_tail/end
execute if entity @s[tag=angry] if score @s action_time matches 120.. run return run function anemoland_contents:sys/entity/mob/squirrel_head/action/knock_tail/end
