scoreboard players add @s action_time 1
execute if entity @s[tag=pet,tag=!following_player] unless entity @e[type=#anemoland:mob_core,tag=enemy,distance=..64] run function anemoland_contents:sys/entity/mob/garapapas/action/follow_player/start
execute if entity @s[tag=pet,tag=following_player] run return run function anemoland_contents:sys/entity/mob/garapapas/action/follow_player/0
function anemoland_contents:sys/entity/mob/garapapas/action/branch
