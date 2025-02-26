execute unless data storage anemoland:progress data.event_list.muscleroom{cleared:1b} run function anemoland:command/progress/unlock/time_attack/muscleroom
data modify storage anemoland:progress data.event_list.muscleroom.cleared set value 1b
execute unless data storage anemoland:progress data.rank{gold:1b} run function anemoland:command/progress/unlock/rank/gold
