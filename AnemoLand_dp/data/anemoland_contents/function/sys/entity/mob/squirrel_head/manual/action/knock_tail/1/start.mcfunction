scoreboard players set @s action1 1
scoreboard players set @s action_time 0

function anemoland_contents:sys/entity/mob/squirrel_head/animation/spin_tail_left1

execute as @a[distance=..64] at @s run playsound minecraft:entity.panda.bite hostile @s ~ ~ ~ 2 0.7
