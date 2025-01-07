
damage @e[type=#rpg:mob_core,tag=mob,tag=enemy,tag=!damaged,dx=2,dy=2,dz=2,sort=nearest,limit=1] 10 generic_kill by @s

execute as @e[type=#rpg:mob_core,tag=mob,tag=enemy,tag=!damaged,dx=2,dy=2,dz=2,sort=nearest,limit=1] run function rpg:sys/entity/branch/damaged_by_mob

return 1