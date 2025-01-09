tp @s ~ ~ ~ ~ ~

# 移動
    execute if score @s action_time matches ..10 run data modify storage temp:_ data.motion set value {speed:0.4}
    execute if score @s action_time matches 11..20 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 21..40 run data modify storage temp:_ data.motion set value {speed:0.1}
    execute rotated ~ 0 run function anemoland:sys/entity/common/motion/0

# パーティクルやすサウンド
    execute if score @s action_time matches ..40 run particle block{block_state:{Name:"dirt"}} ^ ^ ^2 0.5 0 0.5 1 3
    execute if score @s action_time matches 11..40 as @a[distance=..64] at @s run playsound minecraft:block.rooted_dirt.hit hostile @s ~ ~ ~ 0.4 0

execute if score @s action_time matches 80.. run function anemoland_contents:sys/entity/mob/martellos/action/dash/end
