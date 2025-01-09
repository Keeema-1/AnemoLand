tag @s add me
execute facing entity @e[type=#rpg:mob_core,tag=mob_root,tag=boss,tag=!me,distance=..4,limit=1] feet rotated ~180 0 run function rpg:sys/entity/mob/martellos/tick/action/0_stop/collide
tag @s remove me
execute if score #hostile_target.exist temp matches 1 if entity @s[tag=angry] run function rpg:sys/entity/mob/martellos/tick/action/0_stop/end
execute if score #hostile_target.exist temp matches 1 if score @s action_time matches 10.. run function rpg:sys/entity/mob/martellos/tick/action/0_stop/end
