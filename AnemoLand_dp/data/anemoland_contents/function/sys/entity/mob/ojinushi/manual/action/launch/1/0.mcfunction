
tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 3 run particle flame ^ ^3 ^3 0 0 0 0.1 20
execute if score @s action_time matches 3 as @a[distance=..64] at @s run playsound entity.ghast.shoot hostile @s ~ ~ ~ 2 1

execute if score @s action_time matches 3 run function anemoland_contents:sys/entity/mob/ojinushi/manual/action/launch/launch

# 移動
    execute if score @s action_time matches ..5 run data modify storage temp:_ data.motion set value {speed:0.2}
    execute if score @s action_time matches 6..10 run data modify storage temp:_ data.motion set value {speed:0.05}
    execute if score @s action_time matches ..10 run execute rotated ~180 0 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 60.. run function anemoland_contents:sys/entity/mob/ojinushi/action/launch/end
