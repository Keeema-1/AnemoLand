execute if entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..8,limit=1] run function anemoland_contents:sys/entity/mob/squirrel/choose_action/any/near/0
execute unless entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..8,limit=1] run function anemoland_contents:sys/entity/mob/squirrel/choose_action/any/far/0
