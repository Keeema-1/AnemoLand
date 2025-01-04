scoreboard players add #beta1.event_counter score 1
execute unless score #beta1.event_counter score >= #beta1.random_event_cycle score run return run function anemoland_contents:sys/area/beta1/event/update/01
scoreboard players set #beta1.event_counter score 0
tellraw @a {"translate":"anemoland.general.random_event_changed","color":"yellow"}
function anemoland_contents:sys/area/beta1/event/update/00
