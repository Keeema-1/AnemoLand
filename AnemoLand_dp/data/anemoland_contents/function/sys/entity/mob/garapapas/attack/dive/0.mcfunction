function anemoland:sys/entity/common/damage/src/get_status
scoreboard players set #damage.src.attack.mul temp 10
scoreboard players operation #entity_id temp = @s entity_id
execute as @e[type=#anemoland:mob_core,tag=hitbox.head,tag=garapapas,distance=..32] if score @s entity_id = #entity_id temp run tag @s add attack_part
execute as @e[type=#anemoland:mob_core,tag=hitbox.neck,tag=garapapas,distance=..32] if score @s entity_id = #entity_id temp run tag @s add attack_part
execute as @e[type=#anemoland:mob_core,tag=hitbox.arm,tag=garapapas,distance=..32] if score @s entity_id = #entity_id temp run tag @s add attack_part
execute as @e[type=#anemoland:mob_core,tag=hitbox.leg,tag=garapapas,distance=..32] if score @s entity_id = #entity_id temp run tag @s add attack_part
execute as @e[type=#anemoland:mob_core,tag=hitbox.tail,tag=garapapas,distance=..32] if score @s entity_id = #entity_id temp run tag @s add attack_part
execute as @e[type=#anemoland:mob_core,tag=hitbox.body,tag=garapapas,distance=..32] if score @s entity_id = #entity_id temp run tag @s add attack_part
execute if entity @s[tag=pet] rotated ~ 0 positioned ^0 ^0 ^0 positioned as @e[type=#anemoland:mob_core,tag=attack_part,distance=..32] positioned ~-2.0 ~-2.0 ~-2.0 if entity @e[type=#anemoland:mob_core,tag=enemy,tag=!damaged,dx=3,dy=3,dz=3,limit=1] positioned ~2.0 ~2.0 ~2.0 run function anemoland_contents:sys/entity/mob/garapapas/attack/dive/to_enemy_1
execute if entity @s[tag=enemy] rotated ~ 0 positioned ^0 ^0 ^0 positioned as @e[type=#anemoland:mob_core,tag=attack_part,distance=..32] positioned ~-2.0 ~-2.0 ~-2.0 if entity @e[type=#anemoland:mob_core,tag=pet,tag=!damaged,dx=3,dy=3,dz=3,limit=1] positioned ~2.0 ~2.0 ~2.0 run function anemoland_contents:sys/entity/mob/garapapas/attack/dive/to_pet_1
execute if entity @s[tag=enemy] rotated ~ 0 positioned ^0 ^0 ^0 positioned as @e[type=#anemoland:mob_core,tag=attack_part,distance=..32] positioned ~-2.0 ~-2.0 ~-2.0 as @a[dx=3,dy=3,dz=3,scores={hurt_time=-1},gamemode=adventure] positioned ~2.0 ~2.0 ~2.0 run function anemoland_contents:sys/entity/mob/garapapas/attack/dive/to_player_1
tag @e[type=#anemoland:mob_core,tag=attack_part,distance=..32] remove attack_part
execute if entity @s[tag=pet] rotated ~ 0 positioned ^0 ^0 ^0 positioned ~-2.0 ~-2.0 ~-2.0 if entity @e[type=#anemoland:mob_core,tag=enemy,tag=!damaged,dx=3,dy=3,dz=3,limit=1] positioned ~2.0 ~2.0 ~2.0 run function anemoland_contents:sys/entity/mob/garapapas/attack/dive/to_enemy_1
execute if entity @s[tag=enemy] rotated ~ 0 positioned ^0 ^0 ^0 positioned ~-2.0 ~-2.0 ~-2.0 if entity @e[type=#anemoland:mob_core,tag=pet,tag=!damaged,dx=3,dy=3,dz=3,limit=1] positioned ~2.0 ~2.0 ~2.0 run function anemoland_contents:sys/entity/mob/garapapas/attack/dive/to_pet_1
execute if entity @s[tag=enemy] rotated ~ 0 positioned ^0 ^0 ^0 positioned ~-2.0 ~-2.0 ~-2.0 as @a[dx=3,dy=3,dz=3,scores={hurt_time=-1},gamemode=adventure] positioned ~2.0 ~2.0 ~2.0 run function anemoland_contents:sys/entity/mob/garapapas/attack/dive/to_player_1
