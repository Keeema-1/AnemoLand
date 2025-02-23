tp @s ~ ~ ~ ~ ~

# 回転
    # execute if score @s action_time matches ..8 run function anemoland:sys/entity/common/rotate/to_player/front/2

# 移動
    execute if score @s action_time matches ..30 run data modify storage temp:_ data.motion set value {speed:0.3}
    execute if score @s action_time matches ..30 rotated ~ 80 run function anemoland:sys/entity/common/motion/0


# パーティクルやサウンド
    # execute if score @s action_time matches 10..15 run particle block{block_state:{Name:"dirt"}} ~ ~ ~ 2 0 2 1 20
    # execute if score @s action_time matches 8..13 run particle explosion ~ ~ ~ 2 0 2 1 3
    # execute if score @s action_time matches 8..9 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 0

    # execute if score @s action_time matches ..4 as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 1 1.2
    # execute if score @s action_time matches ..4 as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 2 1.5
    # execute if score @s action_time matches ..4 as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 2 0.9

# 攻撃
    # execute if score @s action_time matches ..10 run function anemoland_contents:sys/entity/mob/garuda/attack/dash/0

execute if score @s action_time matches 90.. run function anemoland_contents:sys/entity/mob/garuda/action/summer_salt_side/end
execute if entity @s[tag=angry] if score @s action_time matches 80.. run function anemoland_contents:sys/entity/mob/garuda/action/summer_salt_side/end
