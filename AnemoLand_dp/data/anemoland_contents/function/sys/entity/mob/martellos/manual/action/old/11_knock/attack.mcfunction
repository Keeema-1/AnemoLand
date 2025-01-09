
function anemoland:sys/entity/common/damage/src/mob
scoreboard players set #damage.src.attack.mul temp 10

scoreboard players operation #entity_id temp = @s entity_id
execute if score @s action_way matches 0 as @e[type=#anemoland:mob_core,tag=hitbox.left_arm,tag=martellos,distance=..32] if score @s entity_id = #entity_id temp run tag @s add attack_part
execute if score @s action_way matches 1 as @e[type=#anemoland:mob_core,tag=hitbox.right_arm,tag=martellos,distance=..32] if score @s entity_id = #entity_id temp run tag @s add attack_part

execute if entity @s[tag=pet] rotated ~ 0 positioned as @e[type=#anemoland:mob_core,tag=attack_part,distance=..32] positioned ~-2 ~-1 ~-2 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=enemy,tag=!damaged,dx=3,dy=3,dz=3,limit=1] run function anemoland_contents:sys/entity/mob/martellos/tick/action/11_knock/attack_to_enemy_mob
execute if entity @s[tag=enemy] rotated ~ 0 positioned as @e[type=#anemoland:mob_core,tag=attack_part,distance=..32] positioned ~-2 ~-1 ~-2 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=pet,tag=!damaged,dx=3,dy=3,dz=3,limit=1] run function anemoland_contents:sys/entity/mob/martellos/tick/action/11_knock/attack_to_pet_mob
execute if entity @s[tag=enemy] rotated ~ 0 positioned as @e[type=#anemoland:mob_core,tag=attack_part,distance=..32] positioned ~-2 ~-1 ~-2 as @a[dx=3,dy=3,dz=3,scores={hurt_time=-1},gamemode=adventure,limit=1] run function anemoland_contents:sys/entity/mob/martellos/tick/action/11_knock/attack_to_player

tag @e[type=#anemoland:mob_core,tag=attack_part,distance=..32] remove attack_part
