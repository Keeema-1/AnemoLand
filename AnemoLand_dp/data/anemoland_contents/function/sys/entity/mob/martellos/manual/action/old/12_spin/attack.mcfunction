
function anemoland:sys/entity/common/damage/src/mob
scoreboard players set #damage.src.attack.mul temp 10

scoreboard players operation #entity_id temp = @s entity_id
execute as @e[type=#rpg:mob_core,tag=hitbox.tail1,tag=martellos,distance=..32] if score @s entity_id = #entity_id temp run tag @s add attack_part
execute as @e[type=#rpg:mob_core,tag=hitbox.tail2,tag=martellos,distance=..32] if score @s entity_id = #entity_id temp run tag @s add attack_part
# execute if score @s action_way matches 1 as @e[type=#rpg:mob_core,tag=hitbox.right_arm,tag=martellos,distance=..32] if score @s entity_id = #entity_id temp run tag @s add attack_part

scoreboard players operation #action_way temp = @s action_way

execute if entity @s[tag=pet] rotated ~ 0 positioned as @e[type=#rpg:mob_core,tag=attack_part,distance=..32] positioned ~-1 ~-1 ~-1 if entity @e[type=#rpg:mob_core,tag=mob_root,tag=enemy,tag=!damaged,dx=2,dy=2,dz=2,limit=1] run function rpg:sys/entity/mob/martellos/tick/action/12_spin/attack_to_enemy_mob
execute if entity @s[tag=enemy] rotated ~ 0 positioned as @e[type=#rpg:mob_core,tag=attack_part,distance=..32] positioned ~-1 ~-1 ~-1 if entity @e[type=#rpg:mob_core,tag=mob_root,tag=pet,tag=!damaged,dx=2,dy=2,dz=2,limit=1] run function rpg:sys/entity/mob/martellos/tick/action/12_spin/attack_to_pet_mob
execute if entity @s[tag=enemy] rotated ~ 0 positioned as @e[type=#rpg:mob_core,tag=attack_part,distance=..32] positioned ~-1 ~-1 ~-1 as @a[dx=2,dy=2,dz=2,scores={hurt_time=-1},gamemode=adventure,limit=1] run function rpg:sys/entity/mob/martellos/tick/action/12_spin/attack_to_player

tag @e[type=#rpg:mob_core,tag=attack_part,distance=..32] remove attack_part
