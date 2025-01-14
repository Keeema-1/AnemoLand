
execute if loaded 3072 0 9728 run schedule function anemoland_contents:sys/movie/bagikeros/tick 1t replace

execute unless loaded 3072 0 9728 run schedule function anemoland_contents:sys/movie/bagikeros/cancel 1t replace

execute positioned 3072.0 0.0 9728.0 positioned ~ ~ ~-32 if loaded ~ ~ ~ run function anemoland_contents:sys/movie/bagikeros/manual/tick/0
