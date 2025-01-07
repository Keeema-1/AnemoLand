execute if entity @s[tag=pet] run scoreboard players set #bullet.pet_flag temp 1
execute rotated ~ ~ positioned ~ ~-8 ~ summon armor_stand run function rpg:sys/entity/bullet/firework_motion/summon_
scoreboard players reset #bullet.pet_flag temp
