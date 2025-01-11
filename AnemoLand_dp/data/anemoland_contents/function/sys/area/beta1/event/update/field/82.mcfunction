execute positioned 2560.0 0 4096.0 if entity @a[distance=..128] unless data storage anemoland:progress data.beta1.field.82{cleared:1b} run return 1
data modify storage anemoland:progress data.beta1.field.82.event.bonus set value {xp:0,gold:0,drop:0}
execute store result score #random temp run random value 0..19
execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.82.event.bonus.xp set value 1
execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.82.event.bonus.xp set value 2
execute store result score #random temp run random value 0..19
execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.82.event.bonus.gold set value 1
execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.82.event.bonus.gold set value 2
execute store result score #random temp run random value 0..19
execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.82.event.bonus.drop set value 1
execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.82.event.bonus.drop set value 2
execute store result score #random temp run random value 0..999
execute if score #random temp matches 800.. run return 1
execute store result score #random temp run random value 0..40
execute if score #random temp matches 0..0 if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/walking_mushrooms_5 {field_id:82}
execute if score #random temp matches 1..1 if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/walking_mushrooms_10 {field_id:82}
execute if score #random temp matches 2..2 if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/walking_mushrooms_15 {field_id:82}
execute if score #random temp matches 3..3 if data storage anemoland:progress data.mob_list.boar{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/boars_5 {field_id:82}
execute if score #random temp matches 4..4 if data storage anemoland:progress data.mob_list.boar{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/boars_10 {field_id:82}
execute if score #random temp matches 5..5 if data storage anemoland:progress data.mob_list.boar{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/boars_15 {field_id:82}
execute if score #random temp matches 6..8 if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/squirrels_5 {field_id:82}
execute if score #random temp matches 9..11 if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/squirrels_10 {field_id:82}
execute if score #random temp matches 12..14 if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/squirrels_15 {field_id:82}
execute if score #random temp matches 15..17 if data storage anemoland:progress data.mob_list.garapas{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/garapases_10 {field_id:82}
execute if score #random temp matches 18..20 if data storage anemoland:progress data.mob_list.garapas{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/garapases_15 {field_id:82}
execute if score #random temp matches 21..25 if data storage anemoland:progress data.mob_list.king_boar{unlock:1b} if data storage anemoland:progress data.mob_list.boar{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/king_boar_10 {field_id:82}
execute if score #random temp matches 26..30 if data storage anemoland:progress data.mob_list.king_boar{unlock:1b} if data storage anemoland:progress data.mob_list.boar{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/king_boar_15 {field_id:82}
execute if score #random temp matches 31..35 if data storage anemoland:progress data.mob_list.squirrel_head{unlock:1b} if data storage anemoland:progress data.mob_list.squirrel{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/squirrel_head_15 {field_id:82}
execute if score #random temp matches 36..40 if data storage anemoland:progress data.mob_list.garapapas{unlock:1b} if data storage anemoland:progress data.mob_list.garapas{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/garapapas_15 {field_id:82}
data modify storage anemoland:progress data.beta1.field.82.event.bonus set value {xp:0,gold:0,drop:0}
execute store result score #random temp run random value 0..19
execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.82.event.bonus.xp set value 1
execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.82.event.bonus.xp set value 2
execute store result score #random temp run random value 0..19
execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.82.event.bonus.gold set value 1
execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.82.event.bonus.gold set value 2
execute store result score #random temp run random value 0..19
execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.82.event.bonus.drop set value 1
execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.82.event.bonus.drop set value 2
