scoreboard players set @s action1 1
scoreboard players set @s action_time 0
function anemoland_contents:sys/entity/mob/bagikeros/animation/shake_walk_end

execute as @a[distance=..64] at @s run playsound entity.polar_bear.hurt hostile @s ~ ~ ~ 1 0.6
