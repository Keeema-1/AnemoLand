scoreboard players set @s action1 2
scoreboard players set @s action_time 0

function anemoland_contents:sys/entity/mob/squirrel_head/animation/spin_jump3

execute as @a[distance=..64] at @s run playsound entity.player.attack.sweep hostile @s ~ ~ ~ 1.2 0.5
