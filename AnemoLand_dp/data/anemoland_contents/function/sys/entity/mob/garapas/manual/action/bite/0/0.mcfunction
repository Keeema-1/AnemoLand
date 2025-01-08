# 衝突
    execute unless entity @s[tag=damaged] if predicate anemoland:random_chance/0_2 run function anemoland:sys/entity/common/collide/1

# 移動
    execute if score @s action_time matches ..10 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 11..20 run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches 21.. run data modify storage temp:_ data.motion set value {speed:0.05}
    execute if score @s action_time matches ..10 rotated ~180 5 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches 11..20 if score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^8 facing entity @a[tag=hostile_target,distance=..32,limit=1] feet rotated ~ 5 run function anemoland:sys/entity/common/motion/0
    execute if score @s action_time matches 11..20 unless score #hostile_target.is_player temp matches 1 rotated ~ 0 positioned ^ ^ ^8 facing entity @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32,limit=1] feet rotated ~ 5 run function anemoland:sys/entity/common/motion/0

# ターゲットの方に回転
    function anemoland:sys/entity/common/target_direction/is_leftside
    execute if score @s action_time matches ..20 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-4 ~
    execute if score @s action_time matches ..20 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~4 ~
    execute if score @s action_time matches 21..40 if score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~-2 ~
    execute if score @s action_time matches 21..40 unless score #target_is_leftside temp matches 1 at @s run tp @s ~ ~ ~ ~2 ~
    execute if score @s action_time matches 31.. at @s run tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 35.. run function anemoland_contents:sys/entity/mob/garapas/manual/action/bite/1/start
