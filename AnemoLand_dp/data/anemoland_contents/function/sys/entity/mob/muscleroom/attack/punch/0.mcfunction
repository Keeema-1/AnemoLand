function anemoland:sys/entity/common/damage/src/get_status
scoreboard players set #damage.src.attack.mul temp 10
tag @s add attacker_root
execute if entity @s[tag=pet] rotated ~ 0 positioned ^0 ^0 ^2 positioned ~-2.0 ~-2.0 ~-2.0 if entity @e[type=#anemoland:mob_core,tag=enemy,tag=!damaged,dx=3,dy=3,dz=3,limit=1] positioned ~2.0 ~2.0 ~2.0 run function anemoland_contents:sys/entity/mob/muscleroom/attack/punch/to_enemy_1
execute if entity @s[tag=enemy] rotated ~ 0 positioned ^0 ^0 ^2 positioned ~-2.0 ~-2.0 ~-2.0 if entity @e[type=#anemoland:mob_core,tag=pet,tag=!damaged,dx=3,dy=3,dz=3,limit=1] positioned ~2.0 ~2.0 ~2.0 run function anemoland_contents:sys/entity/mob/muscleroom/attack/punch/to_pet_1
execute if entity @s[tag=enemy] rotated ~ 0 positioned ^0 ^0 ^2 positioned ~-2.0 ~-2.0 ~-2.0 as @a[dx=3,dy=3,dz=3,scores={hurt_time=-1},gamemode=adventure] positioned ~2.0 ~2.0 ~2.0 run function anemoland_contents:sys/entity/mob/muscleroom/attack/punch/to_player_1
tag @s remove attacker_root
