
execute as @e[tag=aj.rig_root,distance=..128] run function anemoland:sys/player/area/common/field/remove_entity/01
execute as @e[type=!player,tag=!area_entrance,tag=!not_killed,distance=..128] run function anemoland:sys/player/area/common/field/remove_entity/00
# execute as @e[tag=mob,distance=..128] run function anemoland:sys/player/area/common/field/remove_entity/00
# execute as @e[type=text_display,tag=display1,distance=..128] run kill @s
# execute as @e[type=area_effect_cloud,tag=target_recorder,distance=..128] run kill @s
# execute as @e[type=turtle,distance=..128] run function anemoland:sys/player/area/common/field/remove_entity/00
# execute as @e[type=armor_stand,tag=bullet,distance=..128] run function anemoland:sys/player/area/common/field/remove_entity/00
