scoreboard players operation #damage.src.attack.base temp = @s attack.base
scoreboard players set #damage.src.attack.weapon temp 0
scoreboard players set #damage.src.attack.skill.add temp 0

data modify storage temp:_ data.elemental_attack set value {fire:{base:5,mul:10}}
execute store result storage temp:_ data.elemental_attack.fire.base int 1 run scoreboard players get @s attack.base

scoreboard players set #damage.src.attack.mul temp 40
execute if entity @s[tag=pet_bullet] rotated ~ 0 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=enemy,tag=!damaged,distance=..2,limit=1] run function anemoland_contents:sys/entity/bullet/firework/attack1_to_enemy_mob
execute if entity @s[tag=!pet_bullet] rotated ~ 0 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=pet,tag=!damaged,distance=..2,limit=1] run function anemoland_contents:sys/entity/bullet/firework/attack1_to_pet_mob
execute if entity @s[tag=!pet_bullet] rotated ~ 0 as @a[distance=..2,scores={hurt_time=-1},gamemode=adventure,limit=1] run function anemoland_contents:sys/entity/bullet/firework/attack_to_player

scoreboard players set #damage.src.attack.mul temp 20
execute if entity @s[tag=pet_bullet] rotated ~ 0 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=enemy,tag=!damaged,distance=..4,limit=1] run function anemoland_contents:sys/entity/bullet/firework/attack2_to_enemy_mob
execute if entity @s[tag=!pet_bullet] rotated ~ 0 if entity @e[type=#anemoland:mob_core,tag=mob_root,tag=pet,tag=!damaged,distance=..4,limit=1] run function anemoland_contents:sys/entity/bullet/firework/attack2_to_pet_mob
execute if entity @s[tag=!pet_bullet] rotated ~ 0 as @a[distance=..4,scores={hurt_time=-1},gamemode=adventure,limit=1] run function anemoland_contents:sys/entity/bullet/firework/attack_to_player

data remove storage temp:_ data.elemental_attack
