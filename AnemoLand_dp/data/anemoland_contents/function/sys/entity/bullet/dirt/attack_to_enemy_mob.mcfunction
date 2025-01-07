
damage @e[type=#rpg:mob_core,tag=mob_root,tag=enemy,tag=!damaged,dx=1,dy=1,dz=1,limit=1] 10 generic_kill by @s

execute as @e[type=#rpg:mob_core,tag=mob_root,tag=enemy,tag=!damaged,dx=1,dy=1,dz=1,limit=1] run function rpg:sys/entity/branch/damaged_by_mob
