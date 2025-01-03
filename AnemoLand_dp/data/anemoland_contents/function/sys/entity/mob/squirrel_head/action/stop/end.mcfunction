execute if entity @s[tag=!noticed] run return run function anemoland_contents:sys/entity/mob/squirrel_head/action/bark/start
execute if entity @s[tag=angry] unless score @s anger.time matches 1.. run return run function anemoland_contents:sys/entity/mob/squirrel_head/action/tired/start
execute if score @s anger.damage matches ..0 unless score @s anger.time matches 1.. run return run function anemoland_contents:sys/entity/mob/squirrel_head/action/get_angry/start
function anemoland_contents:sys/entity/mob/squirrel_head/manual/action/stop/end
