execute positioned 1536.0 0 1024.0 if entity @a[distance=..128] unless data storage anemoland:progress data.beta1.field.24{cleared:1b} run return 1
data modify storage anemoland:progress data.beta1.field.24.event.bonus set value {xp:0,gold:0,drop:0}
execute store result score #random temp run random value 0..19
execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.24.event.bonus.xp set value 1
execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.24.event.bonus.xp set value 2
execute store result score #random temp run random value 0..19
execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.24.event.bonus.gold set value 1
execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.24.event.bonus.gold set value 2
execute store result score #random temp run random value 0..19
execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.24.event.bonus.drop set value 1
execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.24.event.bonus.drop set value 2
execute store result score #random temp run random value 0..999
execute if score #random temp matches 800.. run return 1
execute store result score #random temp run random value 0..5
execute if score #random temp matches 0..0 if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/walking_mushrooms_5 {field_id:24}
execute if score #random temp matches 1..1 if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/walking_mushrooms_10 {field_id:24}
execute if score #random temp matches 2..2 if data storage anemoland:progress data.mob_list.walking_mushroom{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/walking_mushrooms_15 {field_id:24}
execute if score #random temp matches 3..3 if data storage anemoland:progress data.mob_list.boar{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/boars_5 {field_id:24}
execute if score #random temp matches 4..4 if data storage anemoland:progress data.mob_list.boar{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/boars_10 {field_id:24}
execute if score #random temp matches 5..5 if data storage anemoland:progress data.mob_list.boar{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/boars_15 {field_id:24}
data modify storage anemoland:progress data.beta1.field.24.event.bonus set value {xp:0,gold:0,drop:0}
execute store result score #random temp run random value 0..19
execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.24.event.bonus.xp set value 1
execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.24.event.bonus.xp set value 2
execute store result score #random temp run random value 0..19
execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.24.event.bonus.gold set value 1
execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.24.event.bonus.gold set value 2
execute store result score #random temp run random value 0..19
execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.24.event.bonus.drop set value 1
execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.24.event.bonus.drop set value 2
