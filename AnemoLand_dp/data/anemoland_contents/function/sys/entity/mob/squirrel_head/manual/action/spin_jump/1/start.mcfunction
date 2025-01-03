scoreboard players set @s action1 1
scoreboard players set @s action_time 0

scoreboard players set @s action_way2 6
execute at @e[type=#anemoland:mob_core,tag=hostile_target,distance=..32] run function anemoland_contents:sys/entity/mob/squirrel_head/manual/action/spin_jump/1/start_

execute as @a[distance=..64] at @s run playsound minecraft:entity.panda.bite hostile @s ~ ~ ~ 2 0.7