damage @e[type=#anemoland:mob_core,tag=mob,tag=enemy,dx=2,dy=2,dz=2,sort=nearest,limit=1] 10 generic_kill by @s
execute as @e[type=#anemoland:mob_core,tag=mob,tag=enemy,dx=2,dy=2,dz=2,sort=nearest,limit=1] run function anemoland_contents:sys/entity/branch/damaged_by_mob
