execute if data storage anemoland:progress data.beta1.field.55.event{wave:1} run data modify storage temp:_ data.wave.wave set from storage anemoland:progress data.beta1.field.55.event.waves[0]
execute if data storage anemoland:progress data.beta1.field.55.event{wave:2} run data modify storage temp:_ data.wave.wave set from storage anemoland:progress data.beta1.field.55.event.waves[1]
execute if data storage anemoland:progress data.beta1.field.55.event{wave:3} run data modify storage temp:_ data.wave.wave set from storage anemoland:progress data.beta1.field.55.event.waves[2]
execute positioned 2560.0 0.0 3584.0 run function anemoland_contents:sys/event/field/warn_branch with storage temp:_ data.wave
