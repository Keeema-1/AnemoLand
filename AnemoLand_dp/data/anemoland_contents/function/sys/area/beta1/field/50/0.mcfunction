execute positioned 1530.0 0.0 3101.0 if entity @s[dx=7,dy=2,dz=0] at @s run function anemoland_contents:sys/area/beta1/field/50/return/0
execute positioned 1519.0 0.0 3016.0 if entity @s[dx=7,dy=2,dz=0] at @s run function anemoland_contents:sys/area/beta1/field/50/return/0
execute if entity @s[gamemode=!spectator] positioned 1536.0 0.0 3072.0 unless data storage anemoland:progress data.beta1.field.50{cleared:1b} if data storage anemoland:progress data.beta1.field.50{summon_flag:1b} if loaded ~ ~ ~ unless entity @e[tag=enemy,tag=mob_root,distance=..64] run function anemoland_contents:sys/area/beta1/field/50/clear/0
execute positioned 1536.0 0.0 3072.0 unless data storage anemoland:progress data.beta1.field.50{summon_flag:1b} if data storage anemoland:progress data.beta1.field.50.event{wave_interval:1b} unless data storage anemoland:progress data.beta1.field.50{cleared:1b} run function anemoland_contents:sys/area/beta1/field/50/summon/warn
execute positioned 1536.0 0.0 3072.0 unless data storage anemoland:progress data.beta1.field.50{summon_flag:1b} unless data storage anemoland:progress data.beta1.field.50.event{wave_interval:1b} unless data storage anemoland:progress data.beta1.field.50{cleared:1b} if entity @a[distance=..19,gamemode=!spectator,tag=player_check,limit=1] run function anemoland_contents:sys/area/beta1/field/50/summon/0
execute positioned 1536.0 0.0 3072.0 if data storage anemoland:progress data.beta1.field.50{cleared:1b} run function anemoland_contents:sys/area/beta1/field/50/clear/tick
execute positioned 1536.0 0.0 3072.0 unless data storage anemoland:progress data.beta1.field.50{cleared:1b} run function anemoland:sys/player/title/actionbar/field/skill_gauge/0
