execute positioned 2554.0 0.0 2607.0 if entity @s[dx=7,dy=2,dz=0] at @s run function anemoland_contents:sys/area/beta1/field/63/return/0
execute positioned 2560.0 0.0 2560.0 unless data storage anemoland:progress data.beta1.field.63{cleared:1b} if data storage anemoland:progress data.beta1.field.63{summon_flag:1b} if loaded ~ ~ ~ unless entity @e[tag=enemy,tag=mob_root,distance=..64] run function anemoland_contents:sys/area/beta1/field/63/clear/0
execute positioned 2560.0 0.0 2560.0 unless data storage anemoland:progress data.beta1.field.63{summon_flag:1b} if data storage anemoland:progress data.beta1.field.63.event{wave_interval:1b} unless data storage anemoland:progress data.beta1.field.63{cleared:1b} run function anemoland_contents:sys/area/beta1/field/63/summon/warn
execute positioned 2560.0 0.0 2560.0 unless data storage anemoland:progress data.beta1.field.63{summon_flag:1b} unless data storage anemoland:progress data.beta1.field.63.event{wave_interval:1b} unless data storage anemoland:progress data.beta1.field.63{cleared:1b} if entity @a[distance=..34,tag=player_check,limit=1] run function anemoland_contents:sys/area/beta1/field/63/summon/0
execute positioned 2560.0 0.0 2560.0 if data storage anemoland:progress data.beta1.field.63{cleared:1b} run function anemoland_contents:sys/area/beta1/field/63/clear/tick
execute positioned 2560.0 0.0 2560.0 unless data storage anemoland:progress data.beta1.field.63{cleared:1b} run function anemoland:sys/player/title/actionbar/field/skill_gauge/0
