execute positioned 1019.0 0.0 1052.0 if entity @s[dx=7,dy=2,dz=0] at @s run function anemoland_contents:sys/area/beta1/field/25/return/0
execute positioned 1015.0 0.0 1001.0 if entity @s[dx=7,dy=2,dz=0] at @s run function anemoland_contents:sys/area/beta1/field/25/return/0
execute positioned 1024.0 0.0 1024.0 unless data storage anemoland:progress data.beta1.field.25{cleared:1b} if data storage anemoland:progress data.beta1.field.25{summon_flag:1b} if loaded ~ ~ ~ unless entity @e[tag=enemy,tag=mob_root,distance=..64] run function anemoland_contents:sys/area/beta1/field/25/clear/0
execute positioned 1024.0 0.0 1024.0 unless data storage anemoland:progress data.beta1.field.25{summon_flag:1b} if data storage anemoland:progress data.beta1.field.25.event{wave_interval:1b} unless data storage anemoland:progress data.beta1.field.25{cleared:1b} run function anemoland_contents:sys/area/beta1/field/25/summon/warn
execute positioned 1024.0 0.0 1024.0 unless data storage anemoland:progress data.beta1.field.25{summon_flag:1b} unless data storage anemoland:progress data.beta1.field.25.event{wave_interval:1b} unless data storage anemoland:progress data.beta1.field.25{cleared:1b} if entity @a[distance=..18,tag=player_check,limit=1] run function anemoland_contents:sys/area/beta1/field/25/summon/0
execute positioned 1024.0 0.0 1024.0 if data storage anemoland:progress data.beta1.field.25{cleared:1b} run function anemoland_contents:sys/area/beta1/field/25/clear/tick
execute positioned 1024.0 0.0 1024.0 unless data storage anemoland:progress data.beta1.field.25{cleared:1b} run function anemoland_contents:sys/title/actionbar/field/skill_gauge/0
