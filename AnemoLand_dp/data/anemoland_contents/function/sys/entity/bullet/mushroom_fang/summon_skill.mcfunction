execute rotated ~ 0 run function animated_java:mushroom_fang/summon/default
execute if entity @s[tag=pet] run scoreboard players set #bullet.pet_flag temp 1
execute as @e[type=item_display,tag=newly_summoned.aj,distance=..1] run function rpg:sys/entity/bullet/mushroom_fang/summon_skill_
scoreboard players reset #bullet.pet_flag temp