# エンティティを除去
    function anemoland_contents:sys/area/beta1/field/82/init/remove_entity
    schedule function anemoland_contents:sys/area/beta1/field/82/init/remove_entity 1s
# フィールド状態のデータをリセット
    data modify storage anemoland:progress data.beta1.field.82.summon_flag set value 0b
    data modify storage anemoland:progress data.beta1.field.82.cleared set value 0b
    data modify storage anemoland:progress data.beta1.field.82.event.wave set value 1
    data modify storage anemoland:progress data.beta1.field.82.event.wave_interval set value 0b
    data modify storage anemoland:progress data.beta1.field.82.boss_flag set value 0b
    data modify storage anemoland:progress data.beta1.field.82.event.npc1_exist set value 0b
# forceload
    execute positioned 2560.0 0.0 4096.0 run forceload add ~-32 ~-32 ~32 ~32
    schedule function anemoland_contents:sys/area/beta1/field/82/init/forceload_remove 5s replace
