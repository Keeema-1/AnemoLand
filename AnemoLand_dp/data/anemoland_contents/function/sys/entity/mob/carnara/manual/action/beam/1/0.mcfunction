tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 20..60 as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 0.4 0.2

execute if score @s action_time matches 20..60 run function anemoland_contents:sys/entity/mob/carnara/manual/action/common/beam/0

execute if score @s action_time matches 150.. run return run function anemoland_contents:sys/entity/mob/carnara/action/beam_high/end
execute if entity @s[tag=angry] if score @s action_time matches 140.. run return run function anemoland_contents:sys/entity/mob/carnara/action/beam_high/end
