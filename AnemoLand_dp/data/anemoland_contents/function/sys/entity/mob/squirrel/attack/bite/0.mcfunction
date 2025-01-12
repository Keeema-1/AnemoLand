function anemoland:sys/entity/common/damage/src/get_status
scoreboard players set #damage.src.attack.mul temp 10
scoreboard players operation #entity_id temp = @s entity_id
execute as @e[type=#anemoland:mob_core,tag=hitbox.head,tag=squirrel,distance=..32] if score @s entity_id = #entity_id temp run tag @s add attack_part
execute if entity @s[tag=pet] rotated ~ 0 positioned ^0 ^0 ^0 positioned as @e[type=#anemoland:mob_core,tag=attack_part,distance=..32] positioned ~-1.5 ~-2.0 ~-1.5 if entity @e[type=#anemoland:mob_core,tag=enemy,tag=!damaged,dx=2,dy=3,dz=2,limit=1] positioned ~1.5 ~2.0 ~1.5 run function anemoland_contents:sys/entity/mob/squirrel/attack/bite/to_enemy_1
execute if entity @s[tag=enemy] rotated ~ 0 positioned ^0 ^0 ^0 positioned as @e[type=#anemoland:mob_core,tag=attack_part,distance=..32] positioned ~-1.5 ~-2.0 ~-1.5 if entity @e[type=#anemoland:mob_core,tag=pet,tag=!damaged,dx=2,dy=3,dz=2,limit=1] positioned ~1.5 ~2.0 ~1.5 run function anemoland_contents:sys/entity/mob/squirrel/attack/bite/to_pet_1
execute if entity @s[tag=enemy] rotated ~ 0 positioned ^0 ^0 ^0 positioned as @e[type=#anemoland:mob_core,tag=attack_part,distance=..32] positioned ~-1.5 ~-2.0 ~-1.5 as @a[dx=2,dy=3,dz=2,scores={hurt_time=-1},gamemode=adventure] positioned ~1.5 ~2.0 ~1.5 run function anemoland_contents:sys/entity/mob/squirrel/attack/bite/to_player_1
tag @e[type=#anemoland:mob_core,tag=attack_part,distance=..32] remove attack_part
