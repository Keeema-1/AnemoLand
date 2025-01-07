
# 移動
    data modify storage temp:_ data.motion set value {speed:0.1}
    execute rotated ~ 0 run function anemoland:sys/entity/common/motion/0
    tp @s ~ ~ ~ ~ ~

particle block{block_state:{Name:"dirt"}} ~ ~ ~ 0.5 0 0.5 1 3

execute as @a[distance=..64] at @s run playsound block.sand.break hostile @s ~ ~ ~ 1 1

execute if score @s action_time matches 20.. run function anemoland_contents:sys/entity/mob/king_boar/manual/action/tackle/3/start
