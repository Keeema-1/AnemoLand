execute unless data storage anemoland:progress data.beta1.field.53{cleared:1b} if data storage anemoland:progress data.beta1.field.53.event{wave:1,waves_len:1} run function anemoland_contents:sys/area/beta1/field/53/clear/clear
execute unless data storage anemoland:progress data.beta1.field.53{cleared:1b} if data storage anemoland:progress data.beta1.field.53.event{wave:2,waves_len:2} run function anemoland_contents:sys/area/beta1/field/53/clear/clear
execute unless data storage anemoland:progress data.beta1.field.53{cleared:1b} if data storage anemoland:progress data.beta1.field.53.event{wave:3,waves_len:3} run function anemoland_contents:sys/area/beta1/field/53/clear/clear
execute unless data storage anemoland:progress data.beta1.field.53{cleared:1b} if data storage anemoland:progress data.beta1.field.53.event{wave:2} unless data storage anemoland:progress data.beta1.field.53.event{waves_len:2} run function anemoland_contents:sys/area/beta1/field/53/clear/wave_clear
execute unless data storage anemoland:progress data.beta1.field.53{cleared:1b} if data storage anemoland:progress data.beta1.field.53.event{wave:1} unless data storage anemoland:progress data.beta1.field.53.event{waves_len:1} run function anemoland_contents:sys/area/beta1/field/53/clear/wave_clear
