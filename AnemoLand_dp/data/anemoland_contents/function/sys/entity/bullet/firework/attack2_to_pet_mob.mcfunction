
damage @e[type=#anemoland:mob_core,tag=mob_root,tag=pet,tag=!damaged,distance=..4,limit=1] 10 generic_kill by @s

execute as @e[type=#anemoland:mob_core,tag=mob_root,tag=pet,tag=!damaged,distance=..4,limit=1] run function anemoland_contents:sys/entity/branch/damaged_by_mob
