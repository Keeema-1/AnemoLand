execute if entity @s[tag=!noticed] run return run function anemoland_contents:sys/entity/mob/carnara/action/bark/start
execute if entity @s[tag=angry] unless score @s anger.time matches 1.. run return run function anemoland_contents:sys/entity/mob/carnara/action/tired/start
execute if score @s anger.damage matches ..0 unless score @s anger.time matches 1.. run return run function anemoland_contents:sys/entity/mob/carnara/action/get_angry/start
function anemoland_contents:sys/entity/mob/carnara/manual/action/stop/end
