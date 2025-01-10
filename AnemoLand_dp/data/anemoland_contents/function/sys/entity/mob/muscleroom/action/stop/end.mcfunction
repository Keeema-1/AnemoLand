execute if entity @s[tag=!noticed] run return run function anemoland_contents:sys/entity/mob/muscleroom/action/bark/start
execute if entity @s[tag=angry] unless score @s anger.time matches 1.. run return run function anemoland_contents:sys/entity/mob/muscleroom/action/tired/start
function anemoland_contents:sys/entity/mob/muscleroom/manual/action/stop/end
