execute if entity @s[tag=!noticed] run return run function anemoland_contents:sys/entity/mob/bagikeros/action/bark/start
execute if entity @s[tag=angry] unless score @s anger.time matches 1.. run return run function anemoland_contents:sys/entity/mob/bagikeros/action/tired/start
execute if score @s anger.damage matches ..0 unless score @s anger.time matches 1.. run return run function anemoland_contents:sys/entity/mob/bagikeros/action/get_angry/start
function anemoland_contents:sys/entity/mob/bagikeros/manual/action/stop/end
