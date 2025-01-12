# エンティティを除去
    function anemoland_contents:sys/area/beta1/field/44/init/remove_entity
    schedule function anemoland_contents:sys/area/beta1/field/44/init/remove_entity 1s
# フィールド状態のデータをリセット
    data modify storage anemoland:progress data.beta1.field.44.summon_flag set value 0b
    data modify storage anemoland:progress data.beta1.field.44.cleared set value 0b
    data modify storage anemoland:progress data.beta1.field.44.event.wave set value 1
    data modify storage anemoland:progress data.beta1.field.44.event.wave_interval set value 0b
    data modify storage anemoland:progress data.beta1.field.44.boss_flag set value 0b
    data modify storage anemoland:progress data.beta1.field.44.event.npc1_exist set value 0b
# forceload
    execute positioned 2048.0 0.0 3584.0 run forceload add ~-32 ~-32 ~32 ~32
    schedule function anemoland_contents:sys/area/beta1/field/44/init/forceload_remove 5s replace
