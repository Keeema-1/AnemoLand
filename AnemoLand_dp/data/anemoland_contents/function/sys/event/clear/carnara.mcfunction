execute unless data storage anemoland:progress data.event_list.carnara{cleared:1b} run function anemoland_contents:command/talk/system/demo_end
execute unless data storage anemoland:progress data.event_list.carnara{cleared:1b} run advancement grant @p[tag=player_check] only anemoland:achievements/monster/beta1_all
data modify storage anemoland:progress data.event_list.carnara.cleared set value 1b
