tp @s ~ ~ ~ ~ ~

# 回転
    # execute if score @s action_time matches ..8 run function anemoland:sys/entity/common/rotate/to_player/front/2

# 移動
    execute if score @s action_time matches ..10 run data modify storage temp:_ data.motion set value {speed:0.4}
    execute if score @s action_time matches 11..20 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches ..20 rotated ~-60 ~ run function anemoland:sys/entity/common/motion/0

# パーティクルやサウンド
    # execute if score @s action_time matches 10..16 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 0.7 0
    # execute if score @s action_time matches 18..19 as @a[distance=..64] at @s run playsound block.grass.break hostile @s ~ ~ ~ 2 0.5
    # execute if score @s action_time matches 20 rotated ~ 0 positioned ^ ^ ^2.5 run function anemoland_contents:sys/entity/mob/garuda/manual/action/wing_side/1/particle

    execute if score @s action_time matches 3..5 as @a[distance=..64] at @s run playsound entity.bat.takeoff hostile @s ~ ~ ~ 2 0
    execute if score @s action_time matches ..5 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 2 0

    scoreboard players operation #entity_id temp = @s entity_id
    execute if score @s action_way matches 0 if score @s action_time matches ..5 as @e[type=#anemoland:mob_core,tag=hitbox.left_wing,tag=garuda,distance=..32] if score @s entity_id = #entity_id temp at @s run particle sweep_attack ~ ~ ~ 1 1 1 1 1

# 攻撃
    execute if score @s action_way matches 0 if score @s action_time matches ..15 run function anemoland_contents:sys/entity/mob/garuda/attack/left_wing/0
    execute if score @s action_way matches 1 if score @s action_time matches ..15 run function anemoland_contents:sys/entity/mob/garuda/attack/right_wing/0

execute if score @s action_time matches 100.. run function anemoland_contents:sys/entity/mob/garuda/action/wing_side/end
