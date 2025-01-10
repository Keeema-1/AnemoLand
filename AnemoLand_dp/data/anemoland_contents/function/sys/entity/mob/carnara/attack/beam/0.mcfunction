function anemoland:sys/entity/common/damage/src/get_status
scoreboard players set #damage.src.attack.base temp 0
scoreboard players set #damage.src.attack.mul temp 10

execute if entity @s[tag=pet] rotated ~ 0 positioned ^0 ^0 ^0 positioned ~-2 ~-2.0 ~-2 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=enemy,tag=!damaged,dx=3,dy=3,dz=3,limit=1] positioned ~1.5 ~2.0 ~1.5 run function anemoland_contents:sys/entity/mob/carnara/attack/beam/to_enemy
execute if entity @s[tag=enemy] rotated ~ 0 positioned ^0 ^0 ^0 positioned ~-2 ~-2.0 ~-2 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=pet,tag=!damaged,dx=3,dy=3,dz=3,limit=1] positioned ~1.5 ~2.0 ~1.5 run function anemoland_contents:sys/entity/mob/carnara/attack/beam/to_pet
execute if entity @s[tag=enemy] rotated ~ 0 positioned ^0 ^0 ^0 positioned ~-2 ~-2.0 ~-2 as @a[dx=3,dy=3,dz=3,scores={hurt_time=-1},gamemode=adventure] positioned ~2 ~2.0 ~2 run function anemoland_contents:sys/entity/mob/carnara/attack/beam/to_player
