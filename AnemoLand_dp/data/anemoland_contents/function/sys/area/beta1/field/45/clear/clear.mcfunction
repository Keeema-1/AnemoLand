execute unless data storage anemoland:progress data.beta1.field.44{cleared_once:1b} run function anemoland_contents:command/progress/unlock/field/beta1/field44
execute unless data storage anemoland:progress data.beta1.field.55{cleared_once:1b} run function anemoland_contents:command/progress/unlock/field/beta1/field55
execute unless data storage anemoland:progress data.beta1.field.45{cleared_once:1b} run function anemoland_contents:sys/area/beta1/field/45/clear/first_clear
execute if data storage anemoland:progress data.beta1.field.45{boss_flag:1b} run function anemoland:sys/player/area/common/field/clear_boss
execute unless data storage anemoland:progress data.beta1.field.45{boss_flag:1b} run function anemoland:sys/player/area/common/field/clear_mob
data modify storage anemoland:progress data.beta1.field.45.cleared set value 1b
data modify storage anemoland:progress data.beta1.field.45.cleared_once set value 1b
data modify storage anemoland:progress data.beta1.field.45.event.random_event_enable set value 1b
function anemoland_contents:sys/area/beta1/field/45/clear/clear_
data modify storage temp:_ data.event_id.event_id set from storage anemoland:progress data.beta1.field.45.event.event_id
function anemoland_contents:sys/event/clear with storage temp:_ data.event_id
function anemoland_contents:command/field_event/beta1/change/stone_a {field_id:45, level: 20}
function anemoland_contents:sys/area/beta1/event/update/0
