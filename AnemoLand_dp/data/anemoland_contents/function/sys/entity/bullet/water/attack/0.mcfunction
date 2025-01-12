scoreboard players set #damage.src.attack.base temp 0
scoreboard players set #damage.src.attack.mul temp 10
scoreboard players operation #damage.src.attack.water.base temp = @s attack.base

# ペンギンvariantの弾：水と氷の混合
    execute if entity @s[tag=bullet.water.ice] run scoreboard players operation #damage.src.attack.ice.base temp = @s attack.base
    execute if entity @s[tag=bullet.water.ice] run scoreboard players set #temp temp 2
    execute if entity @s[tag=bullet.water.ice] run scoreboard players operation #damage.src.attack.water.base temp /= #temp temp
    execute if entity @s[tag=bullet.water.ice] run scoreboard players operation #damage.src.attack.ice.base temp /= #temp temp

execute if entity @s[tag=pet_bullet] rotated ~ 0 positioned ~-2 ~-2 ~-2 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=enemy,tag=!damaged,dx=3,dy=3,dz=3,limit=1] run function anemoland_contents:sys/entity/bullet/water/attack/to_enemy
execute if entity @s[tag=!pet_bullet] rotated ~ 0 positioned ~-2 ~-2 ~-2 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=pet,tag=!damaged,dx=3,dy=3,dz=3,limit=1] run function anemoland_contents:sys/entity/bullet/water/attack/to_pet
execute if entity @s[tag=!pet_bullet] rotated ~ 0 positioned ~-2 ~-2 ~-2 as @a[dx=3,dy=3,dz=3,scores={hurt_time=-1},gamemode=adventure,limit=1] positioned ~2 ~2 ~2 run function anemoland_contents:sys/entity/bullet/water/attack/to_player
