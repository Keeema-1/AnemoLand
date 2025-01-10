rotate @s ~ ~

execute if score @s action_time matches ..5 as @a[distance=..64] at @s run playsound entity.raptor.ambient hostile @s ~ ~ ~ 1 1.2

function anemoland_contents:sys/entity/mob/raptor/attack/jump/0

execute if predicate anemoland:is_on_ground run return run function anemoland_contents:sys/entity/mob/raptor/manual/action/jump/2/start
execute if score @s action_time matches 100.. run return run function anemoland_contents:sys/entity/mob/raptor/manual/action/jump/2/start
