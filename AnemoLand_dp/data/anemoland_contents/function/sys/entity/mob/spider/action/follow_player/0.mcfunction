execute unless score @s action1 matches 1.. run function anemoland_contents:sys/entity/mob/spider/action/follow_player/stop/0
execute if score @s action1 matches 1.. run function anemoland_contents:sys/entity/mob/spider/action/follow_player/walk/0
function anemoland:sys/entity/common/collide/1
execute if entity @e[type=#anemoland:mob_core,tag=enemy,distance=..32] run function anemoland_contents:sys/entity/mob/spider/action/follow_player/end
