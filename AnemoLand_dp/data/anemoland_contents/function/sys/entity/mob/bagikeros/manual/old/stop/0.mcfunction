
tp @s ~ ~ ~ ~ ~

function anemoland:sys/entity/common/collide/4

execute if score #hostile_target.exist temp matches 1 if entity @s[tag=angry] run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/stop/end
execute if score #hostile_target.exist temp matches 1 if score @s action_time matches 10.. run function anemoland_contents:sys/entity/mob/bagikeros/tick/action/stop/end
