
execute if loaded 3072 0 3072 run schedule function anemoland_contents:sys/movie/martellos/tick 1t replace

execute unless loaded 3072 0 3072 run schedule function anemoland_contents:sys/movie/martellos/cancel 1t replace

execute positioned 3072.0 0.0 3072.0 if loaded ~ ~ ~ run function anemoland_contents:sys/movie/martellos/manual/tick/0
