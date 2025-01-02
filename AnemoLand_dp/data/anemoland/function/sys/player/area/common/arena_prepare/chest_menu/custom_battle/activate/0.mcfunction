
execute unless data storage anemoland:settings data.arena.custom.mob1.type.id unless data storage anemoland:settings data.arena.custom.mob2.type.id unless data storage anemoland:settings data.arena.custom.mob3.type.id unless data storage anemoland:settings data.arena.custom.mob4.type.id run return 1

data modify storage anemoland:settings data.arena.active set from storage anemoland:settings data.arena.custom

function anemoland:sys/player/area/common/arena_prepare/update_display/0
