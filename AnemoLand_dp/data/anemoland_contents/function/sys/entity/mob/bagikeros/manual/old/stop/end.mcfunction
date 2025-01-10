
execute if entity @s[tag=!noticed] run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/bark/start

execute if entity @s[tag=angry] unless score @s anger.time matches 1.. run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/tired/start

execute if score @s action0 matches 0 if score @s anger.damage matches ..0 unless score @s anger.time matches 1.. run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/anger/start

execute if entity @s[tag=angry] if score @s action0 matches 0 if predicate anemoland:random_chance/0_2 if entity @e[type=armor_stand,tag=bullet.ignitable_dust,distance=..12] run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/fire_head/start

# execute if score @s action0 matches 0 run function anemoland_contents:sys/entity/mob/bagikeros/tick/choose_action/any/0

execute if score @s action0 matches 0 run function anemoland_contents:sys/entity/mob/bagikeros/tick/choose_action/test/0
# function anemoland_contents:sys/entity/mob/bagikeros/tick/action/shake_head/start
# function anemoland_contents:sys/entity/mob/bagikeros/tick/choose_action/test/0
