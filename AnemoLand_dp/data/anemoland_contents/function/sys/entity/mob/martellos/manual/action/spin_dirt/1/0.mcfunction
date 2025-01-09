
# 回転
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

execute if score @s action_time matches 2 rotated ~150 0 positioned ^ ^ ^3 rotated ~ ~ run function anemoland_contents:sys/entity/mob/martellos/manual/action/spin_dirt/launch
execute if score @s action_time matches 4 rotated ~190 0 positioned ^ ^ ^3 rotated ~ ~ run function anemoland_contents:sys/entity/mob/martellos/manual/action/spin_dirt/launch
execute if score @s action_time matches 6 rotated ~230 0 positioned ^ ^ ^3 rotated ~ ~ run function anemoland_contents:sys/entity/mob/martellos/manual/action/spin_dirt/launch
execute if score @s action_time matches 8 rotated ~270 0 positioned ^ ^ ^3 rotated ~ ~ run function anemoland_contents:sys/entity/mob/martellos/manual/action/spin_dirt/launch
execute if score @s action_time matches 10 rotated ~310 0 positioned ^ ^ ^3 rotated ~ ~ run function anemoland_contents:sys/entity/mob/martellos/manual/action/spin_dirt/launch
execute if score @s action_time matches 12 rotated ~350 0 positioned ^ ^ ^3 rotated ~ ~ run function anemoland_contents:sys/entity/mob/martellos/manual/action/spin_dirt/launch
# execute if score @s action_time matches 14 rotated ~390 0 positioned ^ ^ ^3 rotated ~ ~ run function anemoland_contents:sys/entity/mob/martellos/manual/action/spin_dirt/launch

execute if score @s action_time matches ..20 run function anemoland_contents:sys/entity/mob/martellos/attack/tail/0

# パーティクルやサウンド
    execute if score @s action_time matches ..15 run particle block{block_state:{Name:"dirt"}} ^-4 ^ ^-1 0.0 0.0 0.0 1 10
    execute if score @s action_time matches ..15 as @a[distance=..64] at @s run playsound minecraft:block.gravel.break hostile @s ~ ~ ~ 2 0

execute if score @s action_time matches 60.. run function anemoland_contents:sys/entity/mob/martellos/manual/action/spin_dirt/2/start
