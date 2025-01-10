
function anemoland:sys/entity/common/damage/src/mob
scoreboard players set #damage.src.attack.mul temp 10

execute if entity @s[tag=pet] positioned ^ ^ ^2 rotated ~ 0 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=enemy,tag=!damaged,distance=..5,limit=1] run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/jump/attack_to_enemy_mob
execute if entity @s[tag=enemy] positioned ^ ^ ^2 rotated ~ 0 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=pet,tag=!damaged,distance=..5,limit=1] run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/jump/attack_to_pet_mob
execute if entity @s[tag=enemy] positioned ^ ^ ^2 rotated ~ 0 as @a[distance=..5,scores={hurt_time=-1},gamemode=adventure,limit=1] run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/jump/attack_to_player
