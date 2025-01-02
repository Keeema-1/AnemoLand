
execute if entity @s[tag=title] run data modify entity @s text set value '"カスタムバトル"'

execute if entity @s[tag=mob1_type] run data modify entity @s text set value '""'
execute if entity @s[tag=mob1_type] if data storage anemoland:settings data.arena.active.mob1.type.id run function anemoland:sys/player/area/common/arena_prepare/update_display/000 with storage anemoland:settings data.arena.active.mob1.type
execute if entity @s[tag=mob2_type] run data modify entity @s text set value '""'
execute if entity @s[tag=mob2_type] if data storage anemoland:settings data.arena.active.mob2.type.id run function anemoland:sys/player/area/common/arena_prepare/update_display/000 with storage anemoland:settings data.arena.active.mob2.type
execute if entity @s[tag=mob3_type] run data modify entity @s text set value '""'
execute if entity @s[tag=mob3_type] if data storage anemoland:settings data.arena.active.mob3.type.id run function anemoland:sys/player/area/common/arena_prepare/update_display/000 with storage anemoland:settings data.arena.active.mob3.type
execute if entity @s[tag=mob4_type] run data modify entity @s text set value '""'
execute if entity @s[tag=mob4_type] if data storage anemoland:settings data.arena.active.mob4.type.id run function anemoland:sys/player/area/common/arena_prepare/update_display/000 with storage anemoland:settings data.arena.active.mob4.type

execute if entity @s[tag=mob1_level] run data modify entity @s text set value '""'
execute if entity @s[tag=mob1_level] if data storage anemoland:settings data.arena.active.mob1.type.id run function anemoland:sys/player/area/common/arena_prepare/update_display/001 with storage anemoland:settings data.arena.active.mob1
execute if entity @s[tag=mob2_level] run data modify entity @s text set value '""'
execute if entity @s[tag=mob2_level] if data storage anemoland:settings data.arena.active.mob2.type.id run function anemoland:sys/player/area/common/arena_prepare/update_display/001 with storage anemoland:settings data.arena.active.mob2
execute if entity @s[tag=mob3_level] run data modify entity @s text set value '""'
execute if entity @s[tag=mob3_level] if data storage anemoland:settings data.arena.active.mob3.type.id unless data storage anemoland:settings data.arena.active{player_side:1} run function anemoland:sys/player/area/common/arena_prepare/update_display/001 with storage anemoland:settings data.arena.active.mob3
execute if entity @s[tag=mob3_level] if data storage anemoland:settings data.arena.active.mob3.type.id if data storage anemoland:settings data.arena.active{player_side:1} run function anemoland:sys/player/area/common/arena_prepare/update_display/002 with storage anemoland:settings data.arena.active.mob3
execute if entity @s[tag=mob4_level] run data modify entity @s text set value '""'
execute if entity @s[tag=mob4_level] if data storage anemoland:settings data.arena.active.mob4.type.id unless data storage anemoland:settings data.arena.active{player_side:1} run function anemoland:sys/player/area/common/arena_prepare/update_display/001 with storage anemoland:settings data.arena.active.mob4
execute if entity @s[tag=mob4_level] if data storage anemoland:settings data.arena.active.mob4.type.id if data storage anemoland:settings data.arena.active{player_side:1} run function anemoland:sys/player/area/common/arena_prepare/update_display/002 with storage anemoland:settings data.arena.active.mob4
