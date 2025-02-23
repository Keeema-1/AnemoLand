scoreboard players operation #damage.src.attack.base temp = @s attack.base
scoreboard players set #damage.src.attack.mul temp 6

# 帯電状態の場合
    execute if entity @s[tag=charged] run scoreboard players operation #damage.src.attack.thunder.base temp = @s attack.base
    execute if entity @s[tag=charged] run scoreboard players set #damage.src.attack.mul temp 5
    execute if entity @s[tag=charged] run scoreboard players set #damage.src.attack.thunder.mul temp 2

execute if entity @s[tag=pet_bullet] rotated ~ 0 positioned ~-2 ~-2 ~-2 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=enemy,tag=!damaged,dx=3,dy=3,dz=3,limit=1] run function anemoland_contents:sys/entity/bullet/dirt/attack/default/to_enemy
execute if entity @s[tag=!pet_bullet] rotated ~ 0 positioned ~-2 ~-2 ~-2 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=pet,tag=!damaged,dx=3,dy=3,dz=3,limit=1] run function anemoland_contents:sys/entity/bullet/dirt/attack/default/to_pet
execute if entity @s[tag=!pet_bullet] rotated ~ 0 positioned ~-2 ~-2 ~-2 as @a[dx=3,dy=3,dz=3,scores={hurt_time=-1},gamemode=adventure,limit=1] positioned ~2 ~2 ~2 run function anemoland_contents:sys/entity/bullet/dirt/attack/default/to_player
