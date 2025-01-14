execute positioned 2048.0 0.0 1024.0 unless entity @a[distance=..128] run function anemoland_contents:sys/area/beta1/field/34/init/0
execute at @s as @a[distance=..4] run function anemoland_contents:sys/area/beta1/field/34/enter/each_participant
execute if data storage anemoland:progress data.beta1.field.34.event{is_movie:1b} run function anemoland_contents:sys/movie/start with storage anemoland:progress data.beta1.field.34.event.movie
