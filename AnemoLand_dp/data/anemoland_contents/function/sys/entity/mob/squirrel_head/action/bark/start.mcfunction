scoreboard players set @s action0 1
scoreboard players set @s action1 0
scoreboard players set @s action_time 0
function anemoland_contents:sys/entity/mob/squirrel_head/manual/action/bark/start
tag @s add noticed
