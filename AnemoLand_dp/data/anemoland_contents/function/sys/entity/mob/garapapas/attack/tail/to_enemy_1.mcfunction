function anemoland_contents:sys/entity/mob/garapapas/manual/attack_hit
damage @e[type=#anemoland:mob_core,tag=enemy,tag=!damaged,dx=4,dy=4,dz=4,limit=1] 10 generic_kill by @s
execute as @e[type=#anemoland:mob_core,tag=enemy,tag=!damaged,dx=4,dy=4,dz=4,limit=1] run function anemoland_contents:sys/entity/branch/damaged_by_mob
