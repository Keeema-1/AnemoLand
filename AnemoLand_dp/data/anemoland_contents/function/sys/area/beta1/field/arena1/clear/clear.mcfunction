execute unless data storage anemoland:progress data.beta1.field.arena1{cleared_once:1b} run function anemoland_contents:sys/area/beta1/field/arena1/clear/first_clear
execute if data storage anemoland:progress data.beta1.field.arena1{boss_flag:1b} run function anemoland:sys/player/area/common/field/clear_boss
execute unless data storage anemoland:progress data.beta1.field.arena1{boss_flag:1b} run function anemoland:sys/player/area/common/field/clear_mob
data modify storage anemoland:progress data.beta1.field.arena1.cleared set value 1b
data modify storage anemoland:progress data.beta1.field.arena1.cleared_once set value 1b
data modify storage anemoland:progress data.beta1.field.arena1.event.random_event_enable set value 1b
function anemoland_contents:sys/area/beta1/field/arena1/clear/clear_
data modify storage temp:_ data.event_id.event_id set from storage anemoland:progress data.beta1.field.arena1.event.event_id
function anemoland_contents:sys/event/clear with storage temp:_ data.event_id
function anemoland_contents:command/field_event/beta1/change/walking_mushrooms_5 {field_id:arena1}
function anemoland_contents:sys/area/beta1/event/update/0