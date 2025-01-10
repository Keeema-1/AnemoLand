function anemoland:sys/entity/common/damage/src/get_status
scoreboard players set #damage.src.attack.mul temp 10
scoreboard players operation #entity_id temp = @s entity_id
execute as @e[type=#anemoland:mob_core,tag=hitbox.head,tag=carnara,distance=..32] if score @s entity_id = #entity_id temp run tag @s add attack_part
execute as @e[type=#anemoland:mob_core,tag=hitbox.neck,tag=carnara,distance=..32] if score @s entity_id = #entity_id temp run tag @s add attack_part
execute as @e[type=#anemoland:mob_core,tag=hitbox.body,tag=carnara,distance=..32] if score @s entity_id = #entity_id temp run tag @s add attack_part
execute if entity @s[tag=pet] rotated ~ 0 positioned ^0 ^0 ^0 positioned as @e[type=#anemoland:mob_core,tag=attack_part,distance=..32] positioned ~-1.5 ~-2.0 ~-1.5 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=enemy,tag=!damaged,dx=2,dy=3,dz=2,limit=1] positioned ~1.5 ~2.0 ~1.5 run function anemoland_contents:sys/entity/mob/carnara/attack/head1/to_enemy
execute if entity @s[tag=enemy] rotated ~ 0 positioned ^0 ^0 ^0 positioned as @e[type=#anemoland:mob_core,tag=attack_part,distance=..32] positioned ~-1.5 ~-2.0 ~-1.5 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=pet,tag=!damaged,dx=2,dy=3,dz=2,limit=1] positioned ~1.5 ~2.0 ~1.5 run function anemoland_contents:sys/entity/mob/carnara/attack/head1/to_pet
execute if entity @s[tag=enemy] rotated ~ 0 positioned ^0 ^0 ^0 positioned as @e[type=#anemoland:mob_core,tag=attack_part,distance=..32] positioned ~-1.5 ~-2.0 ~-1.5 as @a[dx=2,dy=3,dz=2,scores={hurt_time=-1},gamemode=adventure] positioned ~1.5 ~2.0 ~1.5 run function anemoland_contents:sys/entity/mob/carnara/attack/head1/to_player
tag @e[type=#anemoland:mob_core,tag=attack_part,distance=..32] remove attack_part
