title @a[distance=..64] times 10 40 10
title @a[distance=..64] subtitle {"text": "WAVE CLEAR!","color": "white"}
title @a[distance=..64] title ""
data modify storage anemoland:progress data.beta1.field.35.event.wave_interval set value 1b
data modify storage anemoland:progress data.beta1.field.35.summon_flag set value 0b
schedule function anemoland_contents:sys/area/beta1/field/35/clear/wave_interval 5s
execute if data storage anemoland:progress data.beta1.field.35.event{wave:2} run data modify storage anemoland:progress data.beta1.field.35.event.wave set value 3
execute if data storage anemoland:progress data.beta1.field.35.event{wave:1} run data modify storage anemoland:progress data.beta1.field.35.event.wave set value 2
