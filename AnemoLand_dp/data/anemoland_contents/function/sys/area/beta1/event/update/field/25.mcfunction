execute positioned 1024.0 0 1024.0 if entity @a[distance=..128] unless data storage anemoland:progress data.beta1.field.25{cleared:1b} run return 1
data modify storage anemoland:progress data.beta1.field.25.event.bonus set value {xp:0,gold:0,drop:0}
execute store result score #random temp run random value 0..19
execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.25.event.bonus.xp set value 1
execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.25.event.bonus.xp set value 2
execute store result score #random temp run random value 0..19
execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.25.event.bonus.gold set value 1
execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.25.event.bonus.gold set value 2
execute store result score #random temp run random value 0..19
execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.25.event.bonus.drop set value 1
execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.25.event.bonus.drop set value 2
execute store result score #random temp run random value 0..999
execute if score #random temp matches 800.. run return 1
execute store result score #random temp run random value 0..2
execute if score #random temp matches 0..0 if data storage anemoland:progress data.mob_list." + entity_ + "{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/walking_mushrooms_5 {field_id:25}
execute if score #random temp matches 1..1 if data storage anemoland:progress data.mob_list." + entity_ + "{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/walking_mushrooms_10 {field_id:25}
execute if score #random temp matches 2..2 if data storage anemoland:progress data.mob_list." + entity_ + "{unlock:1b} run function anemoland_contents:command/field_event/beta1/change/walking_mushrooms_15 {field_id:25}
data modify storage anemoland:progress data.beta1.field.25.event.bonus set value {xp:0,gold:0,drop:0}
execute store result score #random temp run random value 0..19
execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.25.event.bonus.xp set value 1
execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.25.event.bonus.xp set value 2
execute store result score #random temp run random value 0..19
execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.25.event.bonus.gold set value 1
execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.25.event.bonus.gold set value 2
execute store result score #random temp run random value 0..19
execute if score #random temp matches 0..1 run data modify storage anemoland:progress data.beta1.field.25.event.bonus.drop set value 1
execute if score #random temp matches 2 run data modify storage anemoland:progress data.beta1.field.25.event.bonus.drop set value 2
