scoreboard players set @s action1 1
scoreboard players set @s action_time 0

function anemoland_contents:sys/entity/mob/raptor/animation/jump

data modify storage temp:_ data.motion set value {speed:1.5}
execute rotated ~ -25 run function anemoland:sys/entity/common/motion/0

execute as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 1.2 0.6
execute as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 0.5 0.6
