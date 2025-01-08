damage @e[type=#anemoland:mob_core,tag=mob_root,tag=enemy,tag=!damaged,dx=5,dy=5,dz=5,limit=1] 10 generic_kill by @s
execute as @e[type=#anemoland:mob_core,tag=mob_root,tag=enemy,tag=!damaged,dx=5,dy=5,dz=5,limit=1] run function anemoland_contents:sys/entity/branch/damaged_by_mob
