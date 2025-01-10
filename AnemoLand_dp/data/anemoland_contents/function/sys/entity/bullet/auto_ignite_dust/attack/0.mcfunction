
scoreboard players set #damage.src.attack.mul temp 5
scoreboard players operation #damage.src.attack.base temp = @s attack.base
scoreboard players operation #damage.src.attack.water.base temp = @s attack.base

# scoreboard players set #attack_skill_flag temp 1

execute if entity @s[tag=pet_bullet] rotated ~ 0 positioned ^0 ^0 ^0 positioned ~-2.0 ~-2.0 ~-2.0 if entity @e[type=#anemoland:mob_core,tag=mob,tag=enemy,dx=3,dy=3,dz=3,limit=1] run return run function anemoland_contents:sys/entity/bullet/auto_ignite_dust/attack/to_enemy
execute if entity @s[tag=!pet_bullet] rotated ~ 0 positioned ^0 ^0 ^0 positioned ~-2.0 ~-2.0 ~-2.0 if entity @e[type=#anemoland:mob_core,tag=mob,tag=pet,dx=3,dy=3,dz=3,limit=1] run return run function anemoland_contents:sys/entity/bullet/auto_ignite_dust/attack/to_pet
execute if entity @s[tag=!pet_bullet] rotated ~ 0 positioned ^0 ^0 ^0 positioned ~-2.0 ~-2.0 ~-2.0 as @a[dx=3,dy=3,dz=3,scores={hurt_time=-1},gamemode=adventure] positioned ~2.0 ~2.0 ~2.0 run return run function anemoland_contents:sys/entity/bullet/auto_ignite_dust/attack/to_player

scoreboard players set #damage.src.attack.mul temp 3

execute if entity @s[tag=pet_bullet] rotated ~ 0 positioned ^0 ^0 ^0 positioned ~-3.0 ~-3.0 ~-3.0 if entity @e[type=#anemoland:mob_core,tag=mob,tag=enemy,dx=5,dy=5,dz=5,limit=1] run function anemoland_contents:sys/entity/bullet/auto_ignite_dust/attack/to_enemy2
execute if entity @s[tag=!pet_bullet] rotated ~ 0 positioned ^0 ^0 ^0 positioned ~-3.0 ~-3.0 ~-3.0 if entity @e[type=#anemoland:mob_core,tag=mob,tag=pet,dx=5,dy=5,dz=5,limit=1] run function anemoland_contents:sys/entity/bullet/auto_ignite_dust/attack/to_pet2
execute if entity @s[tag=!pet_bullet] rotated ~ 0 positioned ^0 ^0 ^0 positioned ~-3.0 ~-3.0 ~-3.0 as @a[dx=5,dy=5,dz=5,scores={hurt_time=-1},gamemode=adventure] positioned ~3.0 ~3.0 ~3.0 run function anemoland_contents:sys/entity/bullet/auto_ignite_dust/attack/to_player
