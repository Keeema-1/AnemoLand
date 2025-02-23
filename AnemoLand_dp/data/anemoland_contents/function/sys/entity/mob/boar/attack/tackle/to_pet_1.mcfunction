function anemoland_contents:sys/entity/mob/boar/manual/attack_hit
damage @e[type=#anemoland:mob_core,tag=pet,tag=!damaged,dx=1,dy=3,dz=1,limit=1] 10 generic_kill by @s
execute as @e[type=#anemoland:mob_core,tag=pet,tag=!damaged,dx=1,dy=3,dz=1,limit=1] run function anemoland_contents:sys/entity/branch/damaged_by_mob
