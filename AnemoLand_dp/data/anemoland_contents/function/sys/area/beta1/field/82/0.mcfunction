execute positioned 2555.0 0.0 4125.0 if entity @s[dx=5,dy=2,dz=0] at @s run function anemoland_contents:sys/area/beta1/field/82/return/0
execute positioned 2543.0 0.0 4040.0 if entity @s[dx=7,dy=2,dz=0] at @s run function anemoland_contents:sys/area/beta1/field/82/return/0
execute positioned 2560.0 0.0 4096.0 unless data storage anemoland:progress data.beta1.field.82{cleared:1b} if data storage anemoland:progress data.beta1.field.82{summon_flag:1b} if loaded ~ ~ ~ unless entity @e[tag=enemy,tag=mob_root,distance=..64] run function anemoland_contents:sys/area/beta1/field/82/clear/0
execute positioned 2560.0 0.0 4096.0 unless data storage anemoland:progress data.beta1.field.82{summon_flag:1b} if data storage anemoland:progress data.beta1.field.82.event{wave_interval:1b} unless data storage anemoland:progress data.beta1.field.82{cleared:1b} run function anemoland_contents:sys/area/beta1/field/82/summon/warn
execute positioned 2560.0 0.0 4096.0 unless data storage anemoland:progress data.beta1.field.82{summon_flag:1b} unless data storage anemoland:progress data.beta1.field.82.event{wave_interval:1b} unless data storage anemoland:progress data.beta1.field.82{cleared:1b} if entity @a[distance=..17,tag=player_check,limit=1] run function anemoland_contents:sys/area/beta1/field/82/summon/0
execute positioned 2560.0 0.0 4096.0 if data storage anemoland:progress data.beta1.field.82{cleared:1b} run function anemoland_contents:sys/area/beta1/field/82/clear/tick
execute positioned 2560.0 0.0 4096.0 unless data storage anemoland:progress data.beta1.field.82{cleared:1b} run function anemoland:sys/player/title/actionbar/field/skill_gauge/0
