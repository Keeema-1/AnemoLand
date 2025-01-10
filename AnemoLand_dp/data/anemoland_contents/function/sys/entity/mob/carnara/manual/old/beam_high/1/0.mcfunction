tp @s ~ ~ ~ ~ ~

execute if score @s action_time matches 40..120 if score @s action_way matches 0 run tp @s ~ ~ ~ ~1 ~
execute if score @s action_time matches 40..120 if score @s action_way matches 1 run tp @s ~ ~ ~ ~-1 ~

execute if score @s action_time matches 40..80 as @a[distance=..64] at @s run playsound entity.phantom.hurt hostile @s ~ ~ ~ 0.4 0.2

execute if score @s action_time matches 40..80 run function anemoland_contents:sys/entity/mob/carnara/manual/action/common/beam/0

execute if score @s action_time matches 170.. run function anemoland_contents:sys/entity/mob/carnara/manual/action/beam_high/end
execute if entity @s[tag=angry] if score @s action_time matches 160.. run function anemoland_contents:sys/entity/mob/carnara/manual/action/beam_high/end
