function anemoland:dev/map/beta1/barrier
function anemoland:dev/map/beta1/cloud
function anemoland:dev/map/beta1/display

execute positioned 1024 0 0 run kill @e[type=marker,tag=clear_flag,distance=..128]
execute positioned 1024 0 0 run kill @e[type=marker,tag=display_updater,distance=..128]
execute positioned 1024 0 0 run kill @e[type=marker,tag=unlock_flag,distance=..128]

data modify storage anemoland:progress data.beta1 set value {}

function anemoland:command/progress/init_event
