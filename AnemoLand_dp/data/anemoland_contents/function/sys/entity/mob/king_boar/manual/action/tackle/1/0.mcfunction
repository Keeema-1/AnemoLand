
# ターゲットが前方にいなければアクションの時間を短縮
    function anemoland:sys/entity/common/target_direction/is_frontside
    execute if score @s action_time matches ..60 unless score #target_is_frontside temp matches 1 run scoreboard players set @s action_time 61
# 前方に壁があればアクションの時間を短縮
    execute if score @s action_time matches ..60 rotated ~ 0 unless block ^ ^0.5 ^3 #anemoland:space run scoreboard players set @s action_time 61

# 攻撃
    function anemoland_contents:sys/entity/mob/king_boar/attack/tackle/0

# 前方に走る
    execute if score @s action_time matches ..5 run data modify storage temp:_ data.motion set value {speed:0.9}
    execute if score @s action_time matches 6.. run data modify storage temp:_ data.motion set value {speed:0.65}
    execute rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    tp @s ~ ~ ~ ~ ~

data modify entity @s Motion[1] set value -0.1

# ブレーキを開始
    execute if score @s action_time matches 76.. run function anemoland_contents:sys/entity/mob/king_boar/manual/action/tackle/2/start
