execute if entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..20,limit=1] run function anemoland_contents:sys/entity/mob/carnara/choose_action/any/near/0
execute unless entity @e[type=#anemoland:mob_core,tag=hostile_target,sort=nearest,distance=..20,limit=1] run function anemoland_contents:sys/entity/mob/carnara/choose_action/any/far/0
