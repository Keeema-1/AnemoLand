tp @s ~ ~ ~ ~ ~

# 回転
    # execute if score @s action_time matches ..8 run function anemoland:sys/entity/common/rotate/to_player/front/2

# 移動
    # execute if score @s action_time matches ..20 run data modify storage temp:_ data.motion set value {speed:1.1}
    # execute if score @s action_time matches ..10 rotated ~ 40 run function anemoland:sys/entity/common/motion/0
    # execute if score @s action_time matches 11..20 rotated ~ 70 run function anemoland:sys/entity/common/motion/0


# パーティクルやサウンド
    # execute if score @s action_time matches 10..15 run particle block{block_state:{Name:"dirt"}} ~ ~ ~ 2 0 2 1 20
    # execute if score @s action_time matches 8..13 run particle explosion ~ ~ ~ 2 0 2 1 3
    # execute if score @s action_time matches 8..9 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 0

    execute if score @s action_time matches ..8 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 2 0.4
    # execute if score @s action_time matches ..4 as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 1 1.2
    # execute if score @s action_time matches ..4 as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 2 1.5
    # execute if score @s action_time matches ..4 as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 2 0.9

# 攻撃
    # execute if score @s action_time matches ..10 run function anemoland_contents:sys/entity/mob/garuda/attack/dash/0
    execute if score @s action_time matches 4 rotated ~ 0 positioned ^ ^-1 ^ rotated ~80 40 run function anemoland_contents:sys/entity/mob/garuda/manual/action/common/feather
    execute if score @s action_time matches 5 rotated ~ 0 positioned ^ ^-1 ^ rotated ~60 35 run function anemoland_contents:sys/entity/mob/garuda/manual/action/common/feather
    execute if score @s action_time matches 6 rotated ~ 0 positioned ^ ^-1 ^ rotated ~40 30 run function anemoland_contents:sys/entity/mob/garuda/manual/action/common/feather
    execute if score @s action_time matches 7 rotated ~ 0 positioned ^ ^-1 ^ rotated ~20 26 run function anemoland_contents:sys/entity/mob/garuda/manual/action/common/feather
    execute if score @s action_time matches 8 rotated ~ 0 positioned ^ ^-1 ^ rotated ~ 22 run function anemoland_contents:sys/entity/mob/garuda/manual/action/common/feather
    execute if score @s action_time matches 9 rotated ~ 0 positioned ^ ^-1 ^ rotated ~-10 19 run function anemoland_contents:sys/entity/mob/garuda/manual/action/common/feather
    execute if score @s action_time matches 10 rotated ~ 0 positioned ^ ^-1 ^ rotated ~-20 16 run function anemoland_contents:sys/entity/mob/garuda/manual/action/common/feather
    execute if score @s action_time matches 11 rotated ~ 0 positioned ^ ^-1 ^ rotated ~-25 14 run function anemoland_contents:sys/entity/mob/garuda/manual/action/common/feather
    execute if score @s action_time matches 12 rotated ~ 0 positioned ^ ^-1 ^ rotated ~-30 12 run function anemoland_contents:sys/entity/mob/garuda/manual/action/common/feather

execute if score @s action_time matches 40.. run function anemoland_contents:sys/entity/mob/garuda/manual/action/summer_salt_side/4/start
execute if entity @s[tag=angry] if score @s action_time matches 30.. run function anemoland_contents:sys/entity/mob/garuda/manual/action/summer_salt_side/4/start
