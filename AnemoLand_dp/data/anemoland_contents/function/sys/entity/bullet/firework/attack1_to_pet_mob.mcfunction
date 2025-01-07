
damage @e[type=#rpg:mob_core,tag=mob_root,tag=pet,tag=!damaged,distance=..2,limit=1] 10 generic_kill by @s

execute as @e[type=#rpg:mob_core,tag=mob_root,tag=pet,tag=!damaged,distance=..2,limit=1] run function rpg:sys/entity/branch/damaged_by_mob
