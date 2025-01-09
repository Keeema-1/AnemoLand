# execute if entity @s[tag=noticed] run function rpg:sys/entity/mob/martellos/tick/action/2_walk/start
# execute if entity @s[tag=noticed] run function rpg:sys/entity/mob/martellos/tick/action/3_turn/start
# execute if entity @s[tag=noticed] run function rpg:sys/entity/mob/martellos/tick/action/11_knock/start
# execute if entity @s[tag=noticed] run function rpg:sys/entity/mob/martellos/tick/action/12_spin/start

execute if entity @s[tag=!noticed] run function rpg:sys/entity/mob/martellos/tick/action/1_bark/start

execute if entity @s[tag=angry] unless score @s anger.time matches 1.. run function rpg:sys/entity/mob/martellos/tick/action/5_tired/start

execute if score @s action0 matches 0 if score @s anger.damage matches ..0 unless score @s anger.time matches 1.. run function rpg:sys/entity/mob/martellos/tick/action/4_anger/start

execute if score @s action0 matches 0 run function rpg:sys/entity/mob/martellos/tick/choose_action/any/0
# execute if score @s action0 matches 0 run function rpg:sys/entity/mob/martellos/tick/action/12_spin/start
# execute if score @s action0 matches 0 run function rpg:sys/entity/mob/martellos/tick/action/knock_tail/start
