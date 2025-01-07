scoreboard players set #damage.src.attack.base temp 5
scoreboard players set #damage.src.attack.weapon temp 0
scoreboard players set #damage.src.attack.skill.add temp 0

scoreboard players set #damage.src.attack.mul temp 100
execute if entity @s[tag=pet_bullet] rotated ~ 0 positioned ~-1 ~-1 ~-1 if entity @e[type=#rpg:mob_core,tag=mob_root,tag=enemy,tag=!damaged,dx=1,dy=1,dz=1,limit=1] run function rpg:sys/entity/bullet/dirt/attack_to_enemy_mob
execute if entity @s[tag=!pet_bullet] rotated ~ 0 positioned ~-1 ~-1 ~-1 if entity @e[type=#rpg:mob_core,tag=mob_root,tag=pet,tag=!damaged,dx=1,dy=1,dz=1,limit=1] run function rpg:sys/entity/bullet/dirt/attack_to_pet_mob
execute if entity @s[tag=!pet_bullet] rotated ~ 0 positioned ~-1 ~-1 ~-1 as @a[dx=1,dy=1,dz=1,scores={hurt_time=-1},gamemode=adventure,limit=1] run function rpg:sys/entity/bullet/dirt/attack_to_player
