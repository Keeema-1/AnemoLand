execute if entity @s[tag=pet,tag=!following_player] unless entity @e[type=#anemoland:mob_core,tag=enemy,distance=..64] run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/follow_player/start
execute if entity @s[tag=pet,tag=following_player] run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/follow_player/0
execute if entity @s[tag=pet,tag=following_player] run return 1
scoreboard players add @s action_time 1
function anemoland_contents:sys/entity/mob/muscleroom/tick/action/branch
