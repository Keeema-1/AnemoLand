execute if entity @s[tag=pet] run scoreboard players set #bullet.pet_flag temp 1
execute rotated ~ ~ positioned ~ ~ ~ summon armor_stand run function anemoland_contents:sys/entity/bullet/firework/summon_
scoreboard players reset #bullet.pet_flag temp