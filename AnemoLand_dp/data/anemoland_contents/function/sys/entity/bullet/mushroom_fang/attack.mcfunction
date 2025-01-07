scoreboard players operation #damage.src.attack.base temp = @s attack.base
scoreboard players set #damage.src.attack.weapon temp 0
scoreboard players set #damage.src.attack.skill.add temp 0
scoreboard players set #damage.src.attack.mul temp 100
execute if entity @s[tag=skill_bullet] run scoreboard players set #damage.src.attack.mul temp 20

# tellraw @a {"score":{"name":"#damage.src.attack.base","objective":"temp"}}

execute if entity @s[tag=skill_bullet] rotated ~ 0 positioned ~-1.5 ~-1 ~-1.5 if entity @e[type=#rpg:mob_core,tag=mob,tag=enemy,dx=2,dy=2,dz=2,limit=1] if function rpg:sys/entity/bullet/mushroom_fang/attack_skill run return 1
execute if entity @s[tag=pet_bullet] rotated ~ 0 positioned ~-1.5 ~-1 ~-1.5 if entity @e[type=#rpg:mob_core,tag=mob,tag=enemy,tag=!damaged,dx=2,dy=2,dz=2,limit=1] if function rpg:sys/entity/bullet/mushroom_fang/attack_to_enemy_mob run return 1
execute if entity @s[tag=!pet_bullet,tag=!skill_bullet] rotated ~ 0 positioned ~-1.5 ~-1 ~-1.5 if entity @e[type=#rpg:mob_core,tag=mob,tag=pet,tag=!damaged,dx=2,dy=2,dz=2,limit=1] run function rpg:sys/entity/bullet/mushroom_fang/attack_to_pet_mob
execute if entity @s[tag=!pet_bullet,tag=!skill_bullet] rotated ~ 0 positioned ~-1.5 ~-1 ~-1.5 as @a[dx=2,dy=2,dz=2,scores={hurt_time=-1},gamemode=adventure,limit=1] run function rpg:sys/entity/bullet/mushroom_fang/attack_to_player
