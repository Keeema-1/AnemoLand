# エンティティを除去
    function anemoland_contents:sys/area/beta1/field/24/init/remove_entity
    schedule function anemoland_contents:sys/area/beta1/field/24/init/remove_entity 1s
# フィールド状態のデータをリセット
    data modify storage anemoland:progress data.beta1.field.24.summon_flag set value 0b
    data modify storage anemoland:progress data.beta1.field.24.cleared set value 0b
    data modify storage anemoland:progress data.beta1.field.24.event.wave set value 1
    data modify storage anemoland:progress data.beta1.field.24.event.wave_interval set value 0b
    data modify storage anemoland:progress data.beta1.field.24.boss_flag set value 0b
    data modify storage anemoland:progress data.beta1.field.24.event.npc1_exist set value 0b
# forceload
    execute positioned 1536.0 0.0 1024.0 run forceload add ~-32 ~-32 ~32 ~32
    schedule function anemoland_contents:sys/area/beta1/field/24/init/forceload_remove 5s replace
