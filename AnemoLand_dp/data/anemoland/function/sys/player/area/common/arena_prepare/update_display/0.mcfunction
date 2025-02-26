
execute unless data storage anemoland:settings data.arena.active run return 1
execute unless data storage anemoland:settings data.arena.active.time_attack.id unless data storage anemoland:settings data.arena.custom.mob1.type.id unless data storage anemoland:settings data.arena.custom.mob2.type.id unless data storage anemoland:settings data.arena.custom.mob3.type.id unless data storage anemoland:settings data.arena.custom.mob4.type.id run return 1
execute as @e[type=text_display,tag=arena_display,distance=..20] run function anemoland:sys/player/area/common/arena_prepare/update_display/00
