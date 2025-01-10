execute unless score @s action1 matches 1.. run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/follow_player/0_stop/0
execute if score @s action1 matches 1.. run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/follow_player/1_walk/0
tag @s add me
execute at @s facing entity @e[type=#anemoland:mob_core,tag=mob_root,tag=!me,distance=..1,limit=1] feet rotated ~180 0 run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/follow_player/collide
tag @s remove me
execute if entity @e[type=#anemoland:mob_core,tag=enemy,distance=..32] run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/follow_player/end
