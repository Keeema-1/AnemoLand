scoreboard players operation #damage.src.attack.base temp = @s attack.base
scoreboard players set #damage.src.attack.mul temp 10
scoreboard players set #weapon_skill_flag temp 1

execute if entity @s[tag=skill_bullet] rotated ~ 0 positioned ~-1.5 ~-1 ~-1.5 if entity @e[type=#anemoland:mob_core,tag=mob,tag=enemy,dx=2,dy=2,dz=2,limit=1] run return run function anemoland_contents:sys/entity/bullet/mushroom_fang/attack/default/skill
execute if entity @s[tag=pet_bullet] rotated ~ 0 positioned ~-1.5 ~-1.5 ~-1.5 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=enemy,tag=!damaged,dx=2,dy=2,dz=2,limit=1] run function anemoland_contents:sys/entity/bullet/mushroom_fang/attack/default/to_enemy
execute if entity @s[tag=!pet_bullet] rotated ~ 0 positioned ~-1.5 ~-1.5 ~-1.5 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=pet,tag=!damaged,dx=2,dy=2,dz=2,limit=1] run function anemoland_contents:sys/entity/bullet/mushroom_fang/attack/default/to_pet
execute if entity @s[tag=!pet_bullet] rotated ~ 0 positioned ~-1.5 ~-1.5 ~-1.5 as @a[dx=2,dy=2,dz=2,scores={hurt_time=-1},gamemode=adventure,limit=1] positioned ~1.5 ~1.5 ~1.5 run function anemoland_contents:sys/entity/bullet/mushroom_fang/attack/default/to_player

scoreboard players reset * temp
