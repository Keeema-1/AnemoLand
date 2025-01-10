scoreboard players operation #damage.src.attack.base temp = @s attack.base
scoreboard players set #damage.src.attack.mul temp 10

execute if entity @s[tag=pet_bullet] rotated ~ 0 positioned ~-3 ~-3 ~-3 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=enemy,tag=!damaged,dx=5,dy=5,dz=5,limit=1] run function anemoland_contents:sys/entity/bullet/firework/attack/default/to_enemy
execute if entity @s[tag=!pet_bullet] rotated ~ 0 positioned ~-3 ~-3 ~-3 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=pet,tag=!damaged,dx=5,dy=5,dz=5,limit=1] run function anemoland_contents:sys/entity/bullet/firework/attack/default/to_pet
execute if entity @s[tag=!pet_bullet] rotated ~ 0 positioned ~-3 ~-3 ~-3 as @a[dx=5,dy=5,dz=5,scores={hurt_time=-1},gamemode=adventure,limit=1] run function anemoland_contents:sys/entity/bullet/firework/attack/default/to_player
