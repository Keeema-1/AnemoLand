
# 回転
    execute if score @s action_time matches ..20 run function anemoland:sys/entity/common/rotate/to_player/front/3

    execute if score @s action_time matches 21..40 run tp @s ~ ~ ~ ~ ~

    execute if score @s action_time matches 41.. if score @s action_way matches 0 run tp @s ~ ~ ~ ~-4 ~
    execute if score @s action_time matches 41.. if score @s action_way matches 1 run tp @s ~ ~ ~ ~4 ~

# 移動
    data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches ..20 facing ^ ^ ^-1 rotated ~ 0 run function anemoland:sys/entity/common/motion/0

    data modify storage temp:_ data.motion set value {speed:0.15}
    execute if score @s action_time matches 41.. if score #hostile_target.is_player temp matches 1 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches 41.. unless score #hostile_target.is_player temp matches 1 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 0 run function anemoland:sys/entity/common/motion/0

execute if entity @s[tag=!angry] if score @s action_time matches 40 if score @s action_way matches 0 run function anemoland_contents:sys/entity/mob/martellos/animation/spin_dirt_left2
execute if entity @s[tag=!angry] if score @s action_time matches 40 if score @s action_way matches 1 run function anemoland_contents:sys/entity/mob/martellos/animation/spin_dirt_right2

execute if entity @s[tag=angry] if score @s action_time matches 30 if score @s action_way matches 0 run function anemoland_contents:sys/entity/mob/martellos/animation/spin_dirt_left2
execute if entity @s[tag=angry] if score @s action_time matches 30 if score @s action_way matches 1 run function anemoland_contents:sys/entity/mob/martellos/animation/spin_dirt_right2

execute if entity @s[tag=angry] if score @s action_time matches 50.. run return run function anemoland_contents:sys/entity/mob/martellos/manual/action/spin_dirt/1/start
execute if score @s action_time matches 60.. run return run function anemoland_contents:sys/entity/mob/martellos/manual/action/spin_dirt/1/start

execute if score @s action_time matches 40..42 run particle block{block_state:{Name:"dirt"}} ^-3.5 ^ ^-0.7 0.5 0.0 0.5 1 20
execute if score @s action_time matches 40..43 as @a[distance=..64] at @s run playsound minecraft:block.gravel.break hostile @s ~ ~ ~ 2 0
