scoreboard players operation #attack.base temp = @s attack.base
execute if entity @s[tag=pet] at @e[type=#anemoland:mob_core,tag=mob_root,tag=enemy,sort=random,distance=..64,limit=1] positioned ~ 0 ~ run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_target/1/summon_
execute if entity @s[tag=enemy] at @a[sort=random,distance=..64,limit=1] positioned ~ 0 ~ run function anemoland_contents:sys/entity/mob/muscleroom/tick/action/ground_target/1/summon_
