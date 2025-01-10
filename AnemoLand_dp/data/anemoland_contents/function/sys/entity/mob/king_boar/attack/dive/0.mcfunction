function anemoland:sys/entity/common/damage/src/get_status
scoreboard players set #damage.src.attack.mul temp 10
execute if entity @s[tag=pet] rotated ~ 0 positioned ^0 ^0 ^2 positioned ~-2.5 ~-2.0 ~-2.5 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=enemy,tag=!damaged,dx=4,dy=3,dz=4,limit=1] positioned ~2.5 ~2.0 ~2.5 run function anemoland_contents:sys/entity/mob/king_boar/attack/dive/to_enemy_1
execute if entity @s[tag=enemy] rotated ~ 0 positioned ^0 ^0 ^2 positioned ~-2.5 ~-2.0 ~-2.5 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=pet,tag=!damaged,dx=4,dy=3,dz=4,limit=1] positioned ~2.5 ~2.0 ~2.5 run function anemoland_contents:sys/entity/mob/king_boar/attack/dive/to_pet_1
execute if entity @s[tag=enemy] rotated ~ 0 positioned ^0 ^0 ^2 positioned ~-2.5 ~-2.0 ~-2.5 as @a[dx=4,dy=3,dz=4,scores={hurt_time=-1},gamemode=adventure] positioned ~2.5 ~2.0 ~2.5 run function anemoland_contents:sys/entity/mob/king_boar/attack/dive/to_player_1
