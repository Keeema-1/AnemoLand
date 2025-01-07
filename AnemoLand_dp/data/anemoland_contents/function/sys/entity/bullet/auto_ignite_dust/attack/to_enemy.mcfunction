damage @e[type=#rpg:mob_core,tag=mob,tag=enemy,dx=3,dy=3,dz=3,limit=1] 10 generic_kill by @s
execute as @e[type=#rpg:mob_core,tag=mob,tag=enemy,dx=3,dy=3,dz=3,limit=1] at @s run function rpg:sys/entity/branch/damaged_by_mob
