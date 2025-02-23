tp @s ~ ~ ~ ~ ~

# 回転
    # execute if score @s action_time matches 16..25 if score @s action_way matches 0 at @s run tp @s ~ ~ ~ ~3 ~
    # execute if score @s action_time matches 16..25 if score @s action_way matches 1 at @s run tp @s ~ ~ ~ ~-3 ~

    # execute if score @s action_time matches 50..90 if score @s action_way matches 0 at @s run tp @s ~ ~ ~ ~1 ~
    # execute if score @s action_time matches 50..90 if score @s action_way matches 1 at @s run tp @s ~ ~ ~ ~-1 ~
    # execute if score @s action_time matches ..8 run function anemoland:sys/entity/common/rotate/to_player/front/2

# 移動
    execute if score @s action_time matches ..20 run data modify storage temp:_ data.motion set value {speed:0.3}
    execute if score @s action_time matches 21..30 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 31..50 run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches ..50 rotated ~ 0 run function anemoland:sys/entity/common/motion/0


# パーティクルやすサウンド
    execute if score @s action_time matches ..40 run particle block{block_state:{Name:"dirt"}} ^ ^ ^2 0.5 0 0.5 1 3
    execute if score @s action_time matches 11..40 as @a[distance=..64] at @s run playsound minecraft:block.rooted_dirt.hit hostile @s ~ ~ ~ 0.4 0

# 攻撃
    # execute if score @s action_time matches 16..30 run function anemoland_contents:sys/entity/mob/garuda/attack/tail1/0

execute if score @s action_time matches 80.. run function anemoland_contents:sys/entity/mob/garuda/action/dash/end
execute if entity @s[tag=angry] if score @s action_time matches 70.. run function anemoland_contents:sys/entity/mob/garuda/action/dash/end
