#> anemoland_contents:sys/arena/time_attack/clear
#
# タイムアタッククリア時の情報更新
#
# @within function anemoland:sys/player/area/common/field/arena/clear

# タイムアタック
    execute if data storage anemoland:settings data.arena.active.time_attack{id:"king_boar_and_squirrel_head"} run function anemoland_contents:sys/arena/time_attack/clear/king_boar_and_squirrel_head
    execute if data storage anemoland:settings data.arena.active.time_attack{id:"martellos"} run function anemoland_contents:sys/arena/time_attack/clear/martellos
    execute if data storage anemoland:settings data.arena.active.time_attack{id:"muscleroom"} run function anemoland_contents:sys/arena/time_attack/clear/muscleroom
    execute if data storage anemoland:settings data.arena.active.time_attack{id:"carnara"} run function anemoland_contents:sys/arena/time_attack/clear/carnara
