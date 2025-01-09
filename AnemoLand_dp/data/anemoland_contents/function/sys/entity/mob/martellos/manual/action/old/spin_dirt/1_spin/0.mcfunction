
execute if score @s action_time matches ..5 if score @s action_way matches 0 run tp @s ~ ~ ~ ~-20 ~
execute if score @s action_time matches ..5 if score @s action_way matches 1 run tp @s ~ ~ ~ ~20 ~

execute if score @s action_time matches 6..10 if score @s action_way matches 0 run tp @s ~ ~ ~ ~-15 ~
execute if score @s action_time matches 6..10 if score @s action_way matches 1 run tp @s ~ ~ ~ ~15 ~

execute if score @s action_time matches 11..20 if score @s action_way matches 0 run tp @s ~ ~ ~ ~-5 ~
execute if score @s action_time matches 11..20 if score @s action_way matches 1 run tp @s ~ ~ ~ ~5 ~

execute if score @s action_time matches 21..25 if score @s action_way matches 0 run tp @s ~ ~ ~ ~-3 ~
execute if score @s action_time matches 21..25 if score @s action_way matches 1 run tp @s ~ ~ ~ ~3 ~

execute if score @s action_time matches 26..35 if score @s action_way matches 0 run tp @s ~ ~ ~ ~-1 ~
execute if score @s action_time matches 26..35 if score @s action_way matches 1 run tp @s ~ ~ ~ ~1 ~

execute if score @s action_time matches 36.. if score @s action_way matches 0 run tp @s ~ ~ ~ ~ ~
execute if score @s action_time matches 36.. if score @s action_way matches 1 run tp @s ~ ~ ~ ~ ~

# data modify storage temp:_ data.rot2vec set value {abs:0.15}
# execute if entity @s[tag=angry] run data modify storage temp:_ data.rot2vec set value {abs:0.2}
# execute if score @s action_time matches ..10 if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
# execute if score @s action_time matches ..10 unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
# execute if score @s action_time matches ..10 run data modify entity @s Motion set from storage temp:_ data.vec
# data modify storage temp:_ data.rot2vec set value {abs:0.05}
# execute if entity @s[tag=angry] run data modify storage temp:_ data.rot2vec set value {abs:0.1}
# execute if score @s action_time matches 11..20 if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
# execute if score @s action_time matches 11..20 unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/rot2vec/0
# execute if score @s action_time matches 11..20 run data modify entity @s Motion set from storage temp:_ data.vec

execute if score @s action_time matches 2 rotated ~150 0 positioned ^ ^ ^3 rotated ~ ~ run function anemoland_contents:sys/entity/mob/martellos/tick/action/spin_dirt/launch
execute if score @s action_time matches 4 rotated ~190 0 positioned ^ ^ ^3 rotated ~ ~ run function anemoland_contents:sys/entity/mob/martellos/tick/action/spin_dirt/launch
execute if score @s action_time matches 6 rotated ~230 0 positioned ^ ^ ^3 rotated ~ ~ run function anemoland_contents:sys/entity/mob/martellos/tick/action/spin_dirt/launch
execute if score @s action_time matches 8 rotated ~270 0 positioned ^ ^ ^3 rotated ~ ~ run function anemoland_contents:sys/entity/mob/martellos/tick/action/spin_dirt/launch
execute if score @s action_time matches 10 rotated ~310 0 positioned ^ ^ ^3 rotated ~ ~ run function anemoland_contents:sys/entity/mob/martellos/tick/action/spin_dirt/launch
execute if score @s action_time matches 12 rotated ~350 0 positioned ^ ^ ^3 rotated ~ ~ run function anemoland_contents:sys/entity/mob/martellos/tick/action/spin_dirt/launch
# execute if score @s action_time matches 14 rotated ~390 0 positioned ^ ^ ^3 rotated ~ ~ run function anemoland_contents:sys/entity/mob/martellos/tick/action/spin_dirt/launch

execute if score @s action_time matches ..20 run function anemoland_contents:sys/entity/mob/martellos/tick/action/12_spin/attack

execute if score @s action_time matches ..15 run particle block{block_state:{Name:"dirt"}} ^-4 ^ ^-1 0.0 0.0 0.0 1 10
execute if score @s action_time matches ..15 as @a[distance=..64] at @s run playsound minecraft:block.gravel.break hostile @s ~ ~ ~ 2 0

execute if score @s action_time matches 60.. run function anemoland_contents:sys/entity/mob/martellos/tick/action/spin_dirt/2_cooltime/start
