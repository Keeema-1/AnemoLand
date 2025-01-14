
execute if loaded 3072 0 5120 run schedule function anemoland_contents:sys/movie/ojinushi/tick 1t replace

execute unless loaded 3072 0 5120 run schedule function anemoland_contents:sys/movie/ojinushi/cancel 1t replace

execute positioned 3072.0 0.0 5120.0 if loaded ~ ~ ~ run function anemoland_contents:sys/movie/ojinushi/manual/tick/0
