function anemoland:sys/entity/common/damage/src/get_status
scoreboard players set #damage.src.attack.mul temp 10
execute if entity @s[tag=pet] rotated ~ 0 positioned ^0 ^0 ^1.5 positioned ~-1.0 ~-2.0 ~-1.0 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=enemy,tag=!damaged,dx=1,dy=3,dz=1,limit=1] positioned ~1.0 ~2.0 ~1.0 run function anemoland_contents:sys/entity/mob/walking_mushroom/attack/attack/to_enemy_1
execute if entity @s[tag=enemy] rotated ~ 0 positioned ^0 ^0 ^1.5 positioned ~-1.0 ~-2.0 ~-1.0 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=pet,tag=!damaged,dx=1,dy=3,dz=1,limit=1] positioned ~1.0 ~2.0 ~1.0 run function anemoland_contents:sys/entity/mob/walking_mushroom/attack/attack/to_pet_1
execute if entity @s[tag=enemy] rotated ~ 0 positioned ^0 ^0 ^1.5 positioned ~-1.0 ~-2.0 ~-1.0 as @a[dx=1,dy=3,dz=1,scores={hurt_time=-1},gamemode=adventure] positioned ~1.0 ~2.0 ~1.0 run function anemoland_contents:sys/entity/mob/walking_mushroom/attack/attack/to_player_1
