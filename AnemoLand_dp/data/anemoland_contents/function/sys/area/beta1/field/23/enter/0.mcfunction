execute positioned 1024.0 0.0 1536.0 unless entity @a[distance=..128] run function anemoland_contents:sys/area/beta1/field/23/init/0
execute at @s as @a[distance=..4] run function anemoland_contents:sys/area/beta1/field/23/enter/each_participant
execute if data storage anemoland:progress data.beta1.field.23.event{is_movie:1b} run function anemoland_contents:sys/movie/start with storage anemoland:progress data.beta1.field.23.event.movie
