tp @s ~ ~ ~ ~ ~

# 移動
    execute if score @s action_time matches ..5 run data modify storage temp:_ data.motion set value {speed:0.3}
    execute if score @s action_time matches 6..10 run data modify storage temp:_ data.motion set value {speed:0.1}
    execute if score @s action_time matches ..10 facing ^ ^-0.4 ^-1 run function anemoland:sys/entity/common/motion/0

execute if score @s action_time matches 4 as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 1 0.5
execute if score @s action_time matches 8 as @a[distance=..64] at @s run playsound entity.generic.explode hostile @s ~ ~ ~ 1 1.5
execute if score @s action_time matches 8 rotated ~ 0 positioned ^ ^ ^-6 run function anemoland_contents:sys/entity/mob/squirrel_head/manual/action/knock_tail/1/particle
execute if score @s action_time matches ..8 run function anemoland_contents:sys/entity/mob/squirrel_head/attack/spin_jump2/0

execute if score @s action_time matches 75.. if entity @s[tag=angry] run return run function anemoland_contents:sys/entity/mob/squirrel_head/action/spin_jump/end
execute if score @s action_time matches 80.. run return run function anemoland_contents:sys/entity/mob/squirrel_head/action/spin_jump/end
