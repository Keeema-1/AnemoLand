function anemoland_contents:sys/entity/mob/garuda/manual/attack_hit
damage @e[type=#anemoland:mob_core,tag=enemy,tag=!damaged,dx=3,dy=3,dz=3,limit=1] 10 generic_kill by @s
execute as @e[type=#anemoland:mob_core,tag=enemy,tag=!damaged,dx=3,dy=3,dz=3,limit=1] run function anemoland_contents:sys/entity/branch/damaged_by_mob
