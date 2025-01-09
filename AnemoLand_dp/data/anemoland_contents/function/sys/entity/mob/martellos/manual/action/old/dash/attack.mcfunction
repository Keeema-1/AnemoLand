
function anemoland:sys/entity/common/damage/src/mob
scoreboard players set #damage.src.attack.mul temp 10

execute if entity @s[tag=pet] rotated ~ 0 positioned ~-2 ~-1 ~-2 if entity @e[type=#rpg:mob_core,tag=mob_root,tag=enemy,tag=!damaged,dx=3,dy=3,dz=3,limit=1] run function rpg:sys/entity/mob/martellos/tick/action/dash/attack_to_enemy_mob
execute if entity @s[tag=enemy] rotated ~ 0 positioned ~-2 ~-1 ~-2 if entity @e[type=#rpg:mob_core,tag=mob_root,tag=pet,tag=!damaged,dx=3,dy=3,dz=3,limit=1] run function rpg:sys/entity/mob/martellos/tick/action/dash/attack_to_pet_mob
execute if entity @s[tag=enemy] rotated ~ 0 positioned ~-2 ~-1 ~-2 as @a[dx=3,dy=3,dz=3,scores={hurt_time=-1},gamemode=adventure,limit=1] run function rpg:sys/entity/mob/martellos/tick/action/dash/attack_to_player
